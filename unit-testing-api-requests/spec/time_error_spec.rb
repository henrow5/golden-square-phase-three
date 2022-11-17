require "time_error"

describe TimeError do
  it "returns difference in seconds between server time and time on this computer" do
    fake_requester = double :requester
    allow(fake_requester).to receive(:get).with(URI("https://worldtimeapi.org/api/ip")).and_return('{"abbreviation":"GMT","client_ip":"2.121.127.76","datetime":"2022-11-17T12:20:29.365400+00:00","day_of_week":4,"day_of_year":321,"dst":false,"dst_from":null,"dst_offset":0,"dst_until":null,"raw_offset":0,"timezone":"Europe/London","unixtime":1668687629,"utc_datetime":"2022-11-17T12:20:29.365400+00:00","utc_offset":"+00:00","week_number":46}')
    time = Time.new(2022, 11, 17, 12, 20, 29)
    time_error = TimeError.new(fake_requester)
    expect(time_error.error(time)).to eq 0.3654
  end
end
