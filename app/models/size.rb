class Size < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '1/8' },
    { id: 3, name: '1/4' },
    { id: 4, name: '1/2' },
    { id: 5, name: '1個・本・パック' },
    { id: 6, name: '2個・本・パック' },
    { id: 7, name: '3個・本・パック' },
    { id: 8, name: '4個・本・パック' },
    { id: 9, name: '5個・本・パック' },
    { id: 10, name: '6個・本・パック' },
    { id: 11, name: '10個・本・パック' },
    { id: 12, name: '12個・本・パック' },
    { id: 13, name: '18個・本・パック' },
    { id: 14, name: '24個・本・パック' },
    { id: 15, name: 'その他' },


    { id: 16, name: '100g' },
    { id: 17, name: '200g' },
    { id: 18, name: '300g' },
    { id: 19, name: '400g' },
    { id: 20, name: '500g' },
    { id: 21, name: '1kg' },
    { id: 22, name: '5kg' },
    { id: 23, name: '10kg' },
    { id: 24, name: 'その他' },


    { id: 25, name: '200ml' },
    { id: 26, name: '350ml' },
    { id: 27, name: '500ml' },
    { id: 28, name: '750ml' },
    { id: 29, name: '1000ml' },
    { id: 30, name: '1500ml' },
    { id: 31, name: '2000ml' },
    { id: 32, name: 'その他' }
  ]
 
  # include ActiveHash::Associations
  # has_many :items

end
