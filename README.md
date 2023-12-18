# Потылицин Никита Сергеевич, БПИ228
# Вариант 33
![image](https://github.com/nikitaptl/works_ACS/assets/145208333/aab27787-0555-4d6e-aa47-21fa89e0df9c)
![image](https://github.com/nikitaptl/works_ACS/assets/145208333/48d726ff-843b-45cd-9e60-349eea3e6c2f)
# #
#### Работа была выполнена на оценку 10: ####
1. Помимо двух основных программ, в файле main_omp.cpp написана программа с использование OpenMP
# #
#### Критерии для оценки 9: #### 
  1. В файле main_second(conditional variable).cpp разработано альтернативное решение с использованием другого типа синхропримитивовов - условной переменной. В основной же программе используется мьютекст
  2. Эта программа ведёт себя так же, как и основная программа, поскольку алгоритм остаётся неизменным, меняется лишь алгоритм блокировки и разблокировки критической секции.
# #
#### Критерии для оценки 8: #### 
  1. В программу добавлен вывод результатов в файл. Пользователь либо задаёт имя в файле в параметрах консоли, либо программа запрашивает имя выходного файла в конце.
  2. Результаты работы программы выводятся на экран и записываются в файл
  3. Добавлено управление вводом параметров через командную строку с помощью специальных ключей, вводимых как первый параметр:  
0 - В консоль вводится только исходная строка  
1 - В консоль вводятся исходная строка и адрес файла вывода результатов  
2 - В консоль вводятся файл с исходными данными и файл вывода результатов
Таким образом реализован ввод исходных данных из файла. Если в первым параметром не был введён ключ от 0-2, то программа выводит сообщение об ошибке
  4. Три варианта входных и выходных файлов: 
<details>
  <summary>1 case</summary>
    
![image](https://github.com/nikitaptl/works_ACS/assets/145208333/d25a158a-3e5e-4006-8996-b1732c51d96e)


![image](https://github.com/nikitaptl/works_ACS/assets/145208333/0ddc1514-b794-4e00-80f4-6da66832c3c9)

</details>

<details>
  <summary>2 case</summary>
    
![image](https://github.com/nikitaptl/works_ACS/assets/145208333/6bd29048-66bb-4ef6-a24e-cfd9f6fde4d6)

![image](https://github.com/nikitaptl/works_ACS/assets/145208333/0b0902b1-dec8-4087-82d6-2b4ad6a0a8d8)


</details>

<details>
  <summary>3 case</summary>
    
  ![image](https://github.com/nikitaptl/works_ACS/assets/145208333/71c45477-b42e-4d1c-af97-3f487f9bf805)

  ![image](https://github.com/nikitaptl/works_ACS/assets/145208333/7fedb363-f183-4971-8924-1ef41d01be8a)

  
  ![image](https://github.com/nikitaptl/works_ACS/assets/145208333/8d27f9f9-3894-4d7c-9062-189f32ee2a09)
 дел

</details>


# #
#### Требования для оценки 6-7 и ниже: #### 
  1. Описание алгоритма: На вход поступает исходная строка, предоставляемая либо через командную строку, либо через консоль. После этого строка разбивается на случайное количество частей, где минимальное число частей составляет 2, а максимальное - половину размера исходной строки. Следующим шагом формируется массив указателей, каждый из которых связан с структурой, содержащей входные данные для каждого потока. Каждому потоку выделяется свой фрагмент строки для последующего кодирования.  
Далее создаются отдельные потоки, каждый из которых кодирует свой уникальный фрагмент исходного текста. Защита критических секций в процессе кодирования потоками осуществляется с применением мьютекса. По завершении работы всех потоков обработанные фрагменты объединяются в одну закодированную строку. Таким образом, в данном алгоритме реализована парадигма портфеля данных, где одна общая разделяемая переменная (исходная строка) доступна для обработки только одним потоком в любой момент времени.
2. Генерация случайных данных в допустимых диапазонах реализована в файле generateNumber.cpp
3. Вывод программы является информативным и отражает все ключевые события в программе
<details>
  <summary>вот так красивенько он сделан :) </summary>

![image](https://github.com/nikitaptl/works_ACS/assets/145208333/5802caae-9f6d-40dc-af89-2b2dcac18c60)


</details>
  4. В программе присутствуют комментарии, поясняющие выполняемые действия и описание используемых объектов и переменных    

Спасибо за внимание!
![image](https://github.com/nikitaptl/works_ACS/assets/145208333/f503bddc-180e-4d32-945a-fb85525b1ed5)
