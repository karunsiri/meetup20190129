class Spanish < BaseGreeter
  with 'hello' do
    hello
  end

  with 'u good?' do
    im_awesome
  end

  private

  def hello
    p 'Hola, soy Karun'
  end

  def im_awesome
    p 'increible'
  end
end
