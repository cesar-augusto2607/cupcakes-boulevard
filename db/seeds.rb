# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Candy.create(
    name: 'Cupcake de morango', 
    slug: 'Cupcake de morango'.parameterize,
    description: 'Um delicioso cupcake de morango, uma criação irresistível para os amantes de doces. A base é um bolo leve e fofo, com uma textura úmida, preparado com ingredientes frescos e naturais. A cada mordida, você sentirá o sabor doce e sutilmente ácido do morango, uma mistura perfeita que agrada o paladar. A cobertura é uma camada generosa de creme de manteiga, suave e cremoso, com um toque de essência de morango para intensificar o sabor. Finalizado com um morango fresco no topo, cada cupcake é uma obra de arte, tanto visual quanto gustativa. Ideal para festas, eventos especiais ou simplesmente para satisfazer um desejo por algo doce e delicioso.', 
    price: 4.9, 
    image_url: 'https://t4.ftcdn.net/jpg/01/85/18/07/360_F_185180711_K1pJWG0dAjThWVpggAg31PDzKUF4kqHv.jpg'
)

Candy.create(
    name: 'Cupcake de chocolate', 
    slug: 'Cupcake de chocolate'.parameterize, 
    description: 'Este cupcake é uma verdadeira tentação para os amantes de chocolate. Sua base é um bolo de chocolate rico e úmido, feito com cacau premium para garantir um sabor profundo e intenso. A textura é perfeitamente equilibrada, nem muito densa nem muito leve, proporcionando uma experiência sensorial única a cada mordida. A cobertura é uma ganache de chocolate sedosa e luxuosa, feita com chocolate de alta qualidade e creme de leite fresco, oferecendo um acabamento brilhante e um sabor irresistível. Cada cupcake é decorado com raspas de chocolate ou um pequeno pedaço de chocolate, adicionando uma elegância visual e uma textura extra. Ideal para ocasiões especiais, como aniversários e casamentos, ou simplesmente como um mimo delicioso para qualquer dia.',
    price: 5.2,
    image_url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3TY_A493mQiD56Iab8PSZiE8AOM01fuxj6Q&usqp=CAU'
)

Candy.create(
    name: 'Cupcake de coco', 
    slug: 'Cupcake de coco'.parameterize, 
    description: 'Este cupcake é uma escapada deliciosa para um paraíso tropical. A base é um bolo leve e arejado, infundido com um sabor suave de coco, criando uma experiência gustativa delicada e refrescante. O bolo é feito com farinha de alta qualidade, ovos frescos e leite de coco, garantindo uma umidade perfeita e uma textura macia. A cobertura é uma camada luxuosa de creme de coco, rico e cremoso, complementando harmoniosamente o sabor do bolo. O toque final é uma generosa polvilhada de coco ralado tostado, adicionando uma textura crocante e um aroma tentador. Cada cupcake é decorado com uma fatia fina de coco ou uma cereja para um toque de cor vibrante. Perfeito para eventos de verão, festas na praia ou simplesmente como um deleite para os amantes de coco.',
    price: 4.1,
    image_url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREgs5JuBfsgQAefJbR3ItHlOSzitEljJvWLQ&usqp=CAU'
)
    
Candy.create(
    name: 'Cupcake de franboesa', 
    slug: 'Cupcake de franboesa'.parameterize,
    description: 'Este cupcake é uma combinação encantadora de sabor e sofisticação. A base é um bolo leve e suave, com uma textura aerada que derrete na boca, infundido com um sabor delicado de framboesa. Preparado com ingredientes frescos e naturais, o bolo possui um equilíbrio perfeito entre doçura e acidez, realçando o sabor autêntico da framboesa. A cobertura é uma mousse de framboesa cremosa e sedosa, feita com purê de framboesas frescas, proporcionando um sabor intenso e natural. Cada cupcake é decorado com uma framboesa fresca no topo e um leve toque de açúcar de confeiteiro, adicionando um charme visual e uma doçura sutil. Ideal para ocasiões especiais, chás de bebê, casamentos ou como uma opção elegante para qualquer evento.',
    price: 4.6,
    image_url: 'https://jennyisbaking.com/wp-1c174-content/uploads/2021/01/DSC02143.jpg'
)

Candy.create(
    name: 'Combo de Cupcakes Duo Frutado: Uva & Morango',
    slug: 'Combo de Cupcakes Duo Frutado: Uva & Morango'.parameterize,
    description: 'Este combo exclusivo de cupcakes traz uma explosão de sabores frutados, combinando a doçura do morango com a sutileza da uva. Perfeito para quem adora sabores naturais e frescos. Cupcake de uva tem uma base macia e úmida, infundida com suco natural de uvas selecionadas, oferecendo um sabor suave e delicado. A cor púrpura suave do bolo é naturalmente obtida do suco de uva, tornando-o visualmente atraente. A cobertura é um creme leve de chantilly, enriquecido com um toque de extrato de uva, finalizado com uma uva fresca no topo e um leve polvilhar de açúcar de confeiteiro. Cupcake de Morango se destaca pelo seu sabor intenso e natural de morangos frescos. A base é um bolo fofo e úmido, com pedaços de morango incorporados na massa, criando um equilíbrio perfeito de textura e sabor. A cobertura é um creme de manteiga suave com essência de morango, coroado com um morango fresco, adicionando uma nota de frescor e cor vibrante.',
    price: 7.2,
    image_url: 'https://img.freepik.com/fotos-gratis/cupcakes-coloridos-com-cobertura-deliciosa_23-2149667622.jpg'
)

User.create(name: 'César Augusto', email: 'cesar@gmail.com', password: '123456')