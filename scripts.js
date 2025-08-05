/*!
* Start Bootstrap - Shop Homepage v5.0.6 (https://startbootstrap.com/template/shop-homepage)
* Copyright 2013-2023 Start Bootstrap
* Licensed under MIT (https://github.com/StartBootstrap/startbootstrap-shop-homepage/blob/master/LICENSE)

postgresql://postgres:[YOUR-PASSWORD]@db.hcbytmeovnvzwqehqual.supabase.co:5432/postgres

<script src="https://cdn.jsdelivr.net/npm/@supabase/supabase-js"></script>
  <script>
    const supabaseUrl = 'SUA_URL_DA_API';
    const supabaseKey = 'SUA_CHAVE_ANONIMA';
    const supabase = supabase.createClient(supabaseUrl, supabaseKey);

    async function carregarDados() {
      let { data: livros, error } = await supabase
        .from('livros')
        .select('*')
      if (error) console.error(error)
      else {
        const lista = document.getElementById('lista-livros');
        livros.forEach(livro => {
          const item = document.createElement('li');
          item.textContent = `${livro.titulo} (${livro.autor})`;
          lista.appendChild(item);
        });
      }
    }

    window.onload = () => {
      carregarDados();
    }
  </script>

*/
// This file is intentionally blank
// Use this file to add JavaScript to your project


const supabaseUrl = 'postgresql://postgres:[YOUR-PASSWORD]@db.hcbytmeovnvzwqehqual.supabase.co:5432/postgres';
const supabaseKey = 'analinda124';
const supabase = supabase.createClient(supabaseUrl, supabaseKey);

async function carregarDados() {
    let { data: produtos, error } = await supabase
    .from('produtos')
    .select('*')
    if (error) console.error(error)
    else {
    const lista = document.getElementById('produtos');
    produtos.forEach(produtos => {
        const item = document.createElement('li');
        item.textContent = `${produtos.nomeProduto} (${produtos.valorProduto})`;
        lista.appendChild(item);
    });
    }
}

window.onload = () => {
    carregarDados();
}