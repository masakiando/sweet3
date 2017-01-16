PRODUCT_LISTS = %w(
    AAAAA BBBBB CCCCC DDDDD EEEEE FFFFF
    GGGGG HHHHH IIIII JJJJJ KKKKK LLLLL
  )

station = %w{
  W_stationA:R_stationA W_stationB:R_stationB W_stationC:R_stationC
  W_stationD:R_stationD W_stationE:R_stationE W_stationF:R_stationF
  W_stationG:R_stationG W_stationH:R_stationH W_stationI:R_stationI
  W_stationJ:R_stationJ
}

20.times do |n|
  sn = station[n % 10].split(':')
  path = Rails.root.join("db/seeds/development", "member#{ n % 3 + 1}.jpg")
  file = Rack::Test::UploadedFile.new(path, "image/jpeg", true)

  OperationCheck.create!(
  serial_number: 'SNJP' + 5.years.ago.advance(seconds: rand(5.years))
                           .to_date.strftime("%Y%m%d") + 'ID' + sprintf('%04d', n.to_s),
  serial_number_for_index: '調整中!!!モデルにdowncase処理させる',
  product_number: PRODUCT_LISTS.sample,
  purchase_date: 5.years.ago.advance(seconds: rand(5.years)).to_date,
  repair_number: 'JPA001' + sprintf('%07d', n),
  station: sn[rand(0..1)],
  data: file
)
end

# 10.times do |n|
#   sn = station[n % 5].split(':')
#     Operation_check.create(
#         serial_number: "練習試合の結果" + (n % 3 == 0 ? "☆" : ""),
        # 'SNJP' + 5.years.ago.advance(seconds: rand(5.years)).
        #               to_date.split('/') + '00' + n,
      # serial_number_for_index: serial_number_for_index
      # product_number: PREFECTURE_NAMES.sample
      # purchase_date: 5.years.ago.advance(seconds: rand(5.years)).to_date
      # repair_number: JPA001 + sprintf('%07d', n)
      # station: sn[rand(1)]
      # path = Rails.root.join("db/seeds/development", "member#{ n % 3 + 1}.jpg")
      # file = Rack::Test::UploadedFile.new(path, "image/jpeg", true)
      # data: file
    # )
# end
