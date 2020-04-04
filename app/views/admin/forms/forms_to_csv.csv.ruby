require 'csv'
require 'nkf'

csv_data = CSV.generate do |csv|
  csv = %w(名前 画像 本文)
  @forms.each do |form|
    csv << = [
      form.form_name,
      form.form_image_id,
      form.form_body,
    ]
  end
end
NKF::nkf('--sjis -Lw', csv_data)
#日本語で出力

