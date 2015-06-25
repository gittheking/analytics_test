Student.destroy_all
Officer.destroy_all
Cohort.destroy_all

Officer.create([
  {name: 'Kyle Lee', email: 'kyle@example.com', password: 'password'},
  {name: 'Kevin Vinokur', email: 'kevin@example.com', password: 'password'},
  {name: 'Michele Cruz', email: 'michele@example.com', password: 'password'}
  ])

Cohort.create([
  {name: 'AlumNUTS', officer_id: 1, start_date: Date.parse('2015/05/27'), end_date: Date.parse('2015/08/21')},
  {name: 'Melville', officer_id: 1, start_date: Date.parse('2015/04/27'), end_date: Date.parse('2015/07/21')},
  {name: 'Lemon', officer_id: 1, start_date: Date.parse('2015/03/27'), end_date: Date.parse('2015/06/21')},
  {name: 'Zeus', officer_id: 2, start_date: Date.parse('2015/02/27'), end_date: Date.parse('2015/05/21')},
  {name: 'McClane', officer_id: 2, start_date: Date.parse('2015/01/27'), end_date: Date.parse('2015/04/21')},
  {name: 'Ewok', officer_id: 3, start_date: Date.parse('2014/12/27'), end_date: Date.parse('2015/03/21')},
  {name: 'Hufflepuff', officer_id: 3, start_date: Date.parse('2014/11/27'), end_date: Date.parse('2015/02/21')}
  ])

Student.create([
  # {name: 'Bobby King', email: 'king.robertjoseph@gmail.com', password: 'password', city: 'New York', state: 'New York', cohort_id: 1, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON'},
  # {name: 'Dasha Murauyova', email: 'dashamuravjova@gmail.com', password: 'password', city: 'New York', state: 'New York', cohort_id: 1, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON'},
  # {name: 'Dasha Murauyova', email: 'dashamuravjova@gmail.com', password: 'password', city: 'New York', state: 'New York', cohort_id: 1, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON'},
  # {name: 'Mark Paulson', email: 'markpaulson1@hotmail.com', password: 'password', city: 'New York', state: 'New York', cohort_id: 1, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON'},
  # {name: 'Orin Xie', email: 'orin.xie@gmail.com', password: 'password', city: 'New York', state: 'New York', cohort_id: 1, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON'},
  # {name: 'Andrew Garver', email: 'a.w.garver@gmail.com', password: 'password', city: 'New York', state: 'New York', cohort_id: 2, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON'},
  # {name: 'Anila Alexander', email: 'anila.j.alexander@gmail.com', password: 'password', city: 'New York', state: 'New York', cohort_id: 2, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON'},
  # {name: 'Ben Sayeg', email: 'bensayeg@gmail.com', password: 'password', city: 'New York', state: 'New York', cohort_id: 2, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON'},
  # {name: 'Bryant Novas', email: 'bryant.novas@gmail.com', password: 'password', city: 'New York', state: 'New York', cohort_id: 2, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON'},
  # {name: 'David Neuhaus', email: 'neuhaus87@gmail.com', password: 'password', city: 'New York', state: 'New York', cohort_id: 2, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON'},
  # {name: 'Devatha Kesarkodigae', email: 'k.n.devs@gmail.com', password: 'password', city: 'New York', state: 'New York', cohort_id: 3, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON'},
  # {name: 'Dor Rubin', email: 'kdor.rubin@gmail.com', password: 'password', city: 'New York', state: 'New York', cohort_id: 3, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON'},
  # {name: 'Fernanda Correa', email: 'nandasc@gmail.com', password: 'password', city: 'New York', state: 'New York', cohort_id: 3, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON'},
  # {name: 'Gabriella Lubliner', email: 'gabriella.lubliner@gmail.com', password: 'password', city: 'New York', state: 'New York', cohort_id: 3, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON'},
  # {name: 'Gordon DuGan', email: 'gordon.dugan2@gmail.com', password: 'password', city: 'New York', state: 'New York', cohort_id: 3, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON'},

  # {name: 'James Kim', email: 'khkim1776@gmail.com', password: 'password', city: 'New York', state: 'New York', cohort_id: 4, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON', },
  # {name: 'Jeremy Bell', email: 'jeremyianbell@gmail.com', password: 'password', city: 'New York', state: 'New York', cohort_id: 4, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON'},
  # {name: 'Junho Rhee', email: 'juno0628@gmail.com', password: 'password', city: 'New York', state: 'New York', cohort_id: 4, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON'},
  # {name: 'Karlyce Edwards', email: 'karlyce.edwards@gmail.com', password: 'password', city: 'New York', state: 'New York', cohort_id: 4, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON'},
  # {name: 'James Kim2', email: 'khkim17762@gmail.com', password: 'password', city: 'New York', state: 'New York', cohort_id: 4, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON', },
  # {name: 'Jeremy Bell2', email: 'jeremyianbell2@gmail.com', password: 'password', city: 'New York', state: 'New York', cohort_id: 4, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON'},
  # {name: 'Junho Rhee2', email: 'juno06282@gmail.com', password: 'password', city: 'New York', state: 'New York', cohort_id: 4, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON'},
  # {name: 'Karlyce Edwards2', email: 'karlyce.edwards2@gmail.com', password: 'password', city: 'New York', state: 'New York', cohort_id: 4, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON'},


  # {name: 'Kelly Stevens', email: 'kllystvns@gmail.com', password: 'password', city: 'New York', state: 'New York', cohort_id: 5, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON'},
  # {name: 'Kelly Devine', email: 'kellyd813@gmail.com', password: 'password', city: 'New York', state: 'New York', cohort_id: 5, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON'},
  # {name: 'Mark Paulson', email: 'kmarkpaulson1@hotmail.com', password: 'password', city: 'New York', state: 'New York', cohort_id: 5, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON'},
  # {name: 'Max Peterson', email: 'petersonmaxr@gmail.com', password: 'password', city: 'New York', state: 'New York', cohort_id: 5, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON'},

  # {name: 'Michael Dennis', email: 'pmichaelsdennis4@gmail.com', password: 'password', city: 'New York', state: 'New York', cohort_id: 6, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON'},
  # {name: 'Orlando arana', email: 'porlandoarana@hotmail.com', password: 'password', city: 'New York', state: 'New York', cohort_id: 6, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON'},
  # {name: 'Ryan Burke', email: 'ryaneburke@gmail.com', password: 'password', city: 'New York', state: 'New York', cohort_id: 6, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON'},
  # {name: 'Sam Xiali Hu', email: 'samuelhuxiali@gmail.com', password: 'password', city: 'New York', state: 'New York', cohort_id: 6, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON'},
  # {name: 'Sam Xiali Huk', email: 'samuelhuxiali5@gmail.com', password: 'password', city: 'New York', state: 'New York', cohort_id: 6, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON'},

  {name: 'Toshia Harold', email: 'toshia@gmail.com', password: 'password', city: 'New York', state: 'New York', cohort_id: 7, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON',is_employed: true ,employment_date: Date.parse('2015/2/22')},
  {name: 'Eric Gilley', email: 'eric@gmail.com', password: 'password', city: 'New York', state: 'New York', cohort_id: 7, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON'},
  {name: 'Jacinta Jusinok', email: 'jacinta2@gmail.com', password: 'password', city: 'New York', state: 'New York', cohort_id: 7, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON',is_employed: true ,employment_date: Date.parse('2015/2/25')},
  {name: 'Jacinta Jusino', email: 'jacinta@gmail.com', password: 'password', city: 'New York', state: 'New York', cohort_id: 7, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON',is_employed: true ,employment_date: Date.parse('2015/3/25')},
  {name: 'Mindi Whittemore', email: 'mindi@gmail.com', password: 'password', city: 'New York', state: 'New York', cohort_id: 7, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON',is_employed: true ,employment_date: Date.parse('2015/3/5')},
  {name: 'Toshia Harold2', email: 'toshia2@gmail.com', password: 'password', city: 'New York', state: 'New York', cohort_id: 7, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON'},
  {name: 'Eric Gilley2', email: 'eric2@gmail.com', password: 'password', city: 'New York', state: 'New York', cohort_id: 7, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON',is_employed: true ,employment_date: Date.parse('2015/4/1')},
  {name: 'Jacinta Jusinok2', email: 'jacinta2222@gmail.com', password: 'password', city: 'New York', state: 'New York', cohort_id: 7, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON',is_employed: true ,employment_date: Date.parse('2015/3/15')},
  {name: 'Jacinta Jusino2', email: 'jacinta222@gmail.com', password: 'password', city: 'New York', state: 'New York', cohort_id: 7, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON',is_employed: true ,employment_date: Date.parse('2015/2/27')},
  {name: 'Mindi Whittemore2', email: 'mindi2@gmail.com', password: 'password', city: 'New York', state: 'New York', cohort_id: 7, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON',is_employed: true ,employment_date: Date.parse('2015/3/1')},
  {name: 'Toshia Harold3', email: 'toshia3@gmail.com', password: 'password', city: 'New York', state: 'New York', cohort_id: 7, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON'},
  {name: 'Eric Gilley3', email: 'eric3@gmail.com', password: 'password', city: 'New York', state: 'New York', cohort_id: 7, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON',is_employed: true ,employment_date: Date.parse('2015/3/7')},
  {name: 'Jacinta Jusinok3', email: 'jacinta23@gmail.com', password: 'password', city: 'New York', state: 'New York', cohort_id: 7, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON',is_employed: true ,employment_date: Date.parse('2015/3/17')},
  {name: 'Jacinta Jusino3', email: 'jacinta3@gmail.com', password: 'password', city: 'New York', state: 'New York', cohort_id: 7, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON',is_employed: true ,employment_date: Date.parse('2015/3/20')},
  {name: 'Mindi Whittemore3', email: 'mindi3@gmail.com', password: 'password', city: 'New York', state: 'New York', cohort_id: 7, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON',is_employed: true ,employment_date: Date.parse('2015/2/25')},
  {name: 'Toshia Harold23', email: 'toshia23@gmail.com', password: 'password', city: 'New York', state: 'New York', cohort_id: 7, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON',is_employed: true ,employment_date: Date.parse('2015/2/25')},
  {name: 'Eric Gilley23', email: 'eric23@gmail.com', password: 'password', city: 'New York', state: 'New York', cohort_id: 7, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON',is_employed: true ,employment_date: Date.parse('2015/3/10')},
  {name: 'Jacinta Jusinok32', email: 'jacinta32222@gmail.com', password: 'password', city: 'New York', state: 'New York', cohort_id: 7, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON',is_employed: true ,employment_date: Date.parse('2015/9/25')},
  {name: 'Jacinta Jusino32', email: 'jacinta3222@gmail.com', password: 'password', city: 'New York', state: 'New York', cohort_id: 7, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON',is_employed: true ,employment_date: Date.parse('2015/2/28')},
  {name: 'Mindi Whittemore32', email: 'mindi2@gmail.com', password: 'password', city: 'New York', state: 'New York', cohort_id: 7, skills: 'JavaScript, Ruby, Ruby on Rails, Sinatra, HTML, CSS,Jquery, JSON'}
  ])