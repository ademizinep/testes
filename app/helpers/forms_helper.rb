module FormsHelper
  def self.random_exam_name
    substantives = ['Exame', 'Teste', 'Análise', 'Avaliação']
    adjectives = ['Olho', 'Íris', 'Pupila', 'Córnea', 'Retina', 'Cristalino', 'Conjuntiva', 'Esclera', 'Nervo Óptico', 'Câmara Anterior', 'Câmara Posterior', 'Vítreo']
    sides = ['Direito', 'Esquerdo']

    "#{substantives.sample} #{adjectives.sample} #{sides.sample}"
  end
end
