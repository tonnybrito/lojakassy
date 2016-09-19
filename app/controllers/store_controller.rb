class StoreController < ApplicationController
  def index
    @products = [
      {category: 'Telefones', title: 'EPhone 7 - 32GB', price: 3500, image: 'https://pixabay.com/static/uploads/photo/2014/10/06/11/50/iphone-476237__180.jpg'},
      {category: 'Telefones', title: 'EPalaxy 6 - 64GB', price: 3200, image: 'https://pixabay.com/static/uploads/photo/2013/07/12/15/28/cellphone-149868__180.png'},
      {category: 'Eletrônicos', title: 'Televisor de 32" LCD', price: 2400, image: 'https://pixabay.com/static/uploads/photo/2013/07/12/19/17/tv-154496__180.png'},
      {category: 'Eletrônicos', title: 'TV LED de 42"', price: 3100, image: 'https://pixabay.com/static/uploads/photo/2012/04/13/15/03/monitor-32743__180.png'},
      {category: 'Quadros', title: 'Pantera na floresta', price: 308.99, image: 'https://pixabay.com/static/uploads/photo/2016/07/17/22/21/out-of-the-ordinary-1524886__180.jpg'},
      {category: 'Quadros', title: 'Amigo felino', price: 107.49, image: 'https://pixabay.com/static/uploads/photo/2016/08/16/01/57/cat-1596923__180.png'},
      {category: 'Móveis', title: 'Cadeira da praia', price: 467.69, image: 'https://pixabay.com/static/uploads/photo/2015/06/19/21/33/beach-815303__180.jpg'},
      {category: 'Móveis', title: 'Mesa de jantar', price: 2966.99, image: 'https://pixabay.com/static/uploads/photo/2015/03/07/20/11/dinner-table-663435__180.jpg'},
      {category: 'Jogos', title: 'Bilhar Eletrônico', price: 99.99, image: 'https://pixabay.com/static/uploads/photo/2016/01/29/01/04/billiards-1167221__180.jpg'},
      {category: 'Jogos', title: 'Motocross YY', price: 99.99, image: 'https://pixabay.com/static/uploads/photo/2015/03/18/17/00/sports-679594__180.jpg'},
      {category: 'Computadores', title: 'Notebook 4GB 3.2GHz', price: 2399.99, image: 'https://pixabay.com/static/uploads/photo/2015/08/02/10/35/notebook-871056__180.png'},
      {category: 'Computadores', title: 'Notebook 8GB 1.9GHz', price: 1599.99, image: 'https://pixabay.com/static/uploads/photo/2013/07/13/11/46/laptop-158648__180.png'},
      {category: 'Revistas', title: 'Lazer - Volume 2', price: 99.99, image: 'https://pixabay.com/static/uploads/photo/2016/08/08/23/13/beverage-1579548__180.jpg'},
      {category: 'Revistas', title: 'Jornalista - Volume 1"', price: 99.99, image: 'https://pixabay.com/static/uploads/photo/2015/10/31/17/33/press-1015988__180.jpg'},
      {category: 'Malas', title: 'Mala de viagem', price: 399.99, image: 'https://pixabay.com/static/uploads/photo/2014/10/01/14/11/suitcase-468445__180.jpg'},
      {category: 'Malas', title: 'Cadeado para mala', price: 19.99, image: 'https://pixabay.com/static/uploads/photo/2015/01/13/00/06/padlocks-597815__180.jpg'},
      {category: 'Malas', title: 'Maleta de mão', price: 239.99, image: 'https://pixabay.com/static/uploads/photo/2016/07/31/08/01/frog-1558608__180.jpg'},
      {category: 'Materiais de construção', title: 'Capacete de proteção', price: 109.99, image: 'https://pixabay.com/static/uploads/photo/2013/07/12/16/27/safety-helmet-150913__180.png'},
      {category: 'Materiais de construção', title: 'Chave Philips', price: 9.99, image: 'https://pixabay.com/static/uploads/photo/2013/07/12/12/01/screwdriver-145111__180.png'},
      {category: 'Materiais de construção', title: 'Martelo de aço', price: 59.99, image: 'https://pixabay.com/static/uploads/photo/2012/04/13/20/57/hammer-33617__180.png'}
    ].shuffle
  end
end
