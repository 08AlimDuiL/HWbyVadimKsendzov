## **POSTMAN**

### **HW_1**

***Создать запросы в Postman.***

Protocol: http

IP: 162.55.220.72

Port: 5005

**EP_1**

Method: **GET**

EndPoint: /get_method

request url params: 

 name: str
 age: int

response: 

    [
         “Str”,
         “Str”
    ]

**EP_2**

Method: **POST**

EndPoint: /user_info_3

request form data: 

 name: str
 age: int
 salary: int

response: 

    {
        'name': name,
        'age': age,
        'salary': salary,
        'family': {
                    'children':  [
                        ['Alex', 24],['Kate', 12]
                                 ],
                    'u_salary_1_5_year': salary * 4
              }
    }

**EP_3**

Method: **GET**

EndPoint: /object_info_1

request url params: 

 name: str
 age: int
 weight: int

response: 

    {
        'name': name,
        'age': age,
        'daily_food': weight * 0.012,
        'daily_sleep': weight * 2.5
    }

**EP_4**

Method: **GET**

EndPoint: /object_info_2

request url params: 

 name: str
 age: int
 salary: int

response: 

    {
        'start_qa_salary': salary,
        'qa_salary_after_6_months': salary * 2,
        'qa_salary_after_12_months': salary * 2.7,
        'qa_salary_after_1.5_year': salary * 3.3,
        'qa_salary_after_3.5_years': salary * 3.8,
        'person': {
            'u_name': [user_name, salary, age],
            'u_age': age,
            'u_salary_5_years': salary * 4.2
                  }
    }

**EP_5**

Method: **GET**

EndPoint: /object_info_3

request url params: 
 name: str
 age: int
 salary: int

response: 

    {
        'name': name,
        'age': age,
        'salary': salary,
        'family':   {
            'children': [['Alex', 24], ['Kate', 12]],
            'pets': {
                'cat':  {
                    'name':'Sunny',
                    'age': 3
                        },
                'dog':  {
                    'name':'Luky',
                    'age': 4
                        }
                    },
            'u_salary_1_5_year': salary * 4
                    }
    }


**EP_6**

Method: **GET**

EndPoint: /object_info_4

request url params: 

 name: str
 age: int
 salary: int

response: 

    {
        'name': name,
        'age': int(age),
        'salary': [salary, str(salary * 2), str(salary * 3)]
    }

**EP_7**

Method: **POST**

EndPoint: /user_info_2

request form data: 

 name: str
 age: int
 salary: int

response: 

    {
        'start_qa_salary': salary,
        'qa_salary_after_6_months': salary * 2,
        'qa_salary_after_12_months': salary * 2.7,
        'qa_salary_after_1.5_year': salary * 3.3,
        'qa_salary_after_3.5_years': salary * 3.8,
        'person':   {
            'u_name': [user_name, salary, age],
            'u_age': age,
            'u_salary_5_years': salary * 4.2
                    }
    }

### **HW_2**

 * http://162.55.220.72:5005/first

    1. Отправить запрос;
    2. Статус код 200;
    3. Проверить, что в body приходит правильный string.

* http://162.55.220.72:5005/user_info_3

    1. Отправить запрос;
    2. Статус код 200;
    3. Спарсить response body в json;
    4. Проверить, что name в ответе равно name s request (name вбить руками);
    5. Проверить, что age в ответе равно age s request (age вбить руками);
    6. Проверить, что salary в ответе равно salary s request (salary вбить руками);
    7. Спарсить request;
    8. Проверить, что name в ответе равно name s request (name забрать из request);
    9. Проверить, что age в ответе равно age s request (age забрать из request);
    10. Проверить, что salary в ответе равно salary s request (salary забрать из request);
    11. Вывести в консоль параметр family из response;
    12. Проверить что u_salary_1_5_year в ответе равно salary*4 (salary забрать из request).

* http://162.55.220.72:5005/object_info_3

    1. Отправить запрос;
    2. Статус код 200;
    3. Спарсить response body в json;
    4. Спарсить request;
    5. Проверить, что name в ответе равно name s request (name забрать из request);
    6. Проверить, что age в ответе равно age s request (age забрать из request);
    7. Проверить, что salary в ответе равно salary s request (salary забрать из request);
    8. Вывести в консоль параметр family из response;
    9. Проверить, что у параметра dog есть параметры name;
    10. Проверить, что у параметра dog есть параметры age;
    11. Проверить, что параметр name имеет значение Luky;
    12. Проверить, что параметр age имеет значение 4.

* http://162.55.220.72:5005/object_info_4

    1. Отправить запрос;
    2. Статус код 200;
    3. Спарсить response body в json;
    4. Спарсить request;
    5. Проверить, что name в ответе равно name s request (name забрать из request);
    6. Проверить, что age в ответе равно age из request (age забрать из request);
    7. Вывести в консоль параметр salary из request;
    8. Вывести в консоль параметр salary из response;
    9. Вывести в консоль 0-й элемент параметра salary из response;
    10. Вывести в консоль 1-й элемент параметра salary параметр salary из response;
    11. Вывести в консоль 2-й элемент параметра salary параметр salary из response;
    12. Проверить, что 0-й элемент параметра salary равен salary из request (salary забрать из request);
    13. Проверить, что 1-й элемент параметра salary равен salary*2 из request (salary забрать из request);
    14. Проверить, что 2-й элемент параметра salary равен salary*3 из request (salary забрать из request);
    15. Создать в окружении переменную name;
    16. Создать в окружении переменную age;
    17. Создать в окружении переменную salary;
    18. Передать в окружение переменную name;
    19. Передать в окружение переменную age;
    20. Передать в окружение переменную salary;
    21. Написать цикл который выведет в консоль по порядку элементы списка из параметра salary.


* http://162.55.220.72:5005/user_info_2

    1. Вставить параметр salary из окружения в request;
    2. Вставить параметр age из окружения в age;
    3. Вставить параметр name из окружения в name;
    4. Отправить запрос;
    5. Статус код 200;
    6. Спарсить response body в json;
    7. Спарсить request;
    8. Проверить, что json response имеет параметр start_qa_salary;
    9. Проверить, что json response имеет параметр qa_salary_after_6_months;
    10. Проверить, что json response имеет параметр qa_salary_after_12_months;
    11. Проверить, что json response имеет параметр qa_salary_after_1.5_year;
    12. Проверить, что json response имеет параметр qa_salary_after_3.5_years;
    13. Проверить, что json response имеет параметр person;
    14. Проверить, что параметр start_qa_salary равен salary из request (salary забрать из request);
    15. Проверить, что параметр qa_salary_after_6_months равен salary*2 из request (salary забрать из request);
    16. Проверить, что параметр qa_salary_after_12_months равен salary*2.7 из request (salary забрать из request);
    17. Проверить, что параметр qa_salary_after_1.5_year равен salary*3.3 из request (salary забрать из request);
    18. Проверить, что параметр qa_salary_after_3.5_years равен salary*3.8 из request (salary забрать из request);
    19. Проверить, что в параметре person, 1-й элемент из u_name равен salary из request (salary забрать из request);
    20. Проверить, что что параметр u_age равен age из request (age забрать из request);
    21. Проверить, что параметр u_salary_5_years равен salary*4.2 из request (salary забрать из request);
    22. Написать цикл который выведет в консоль по порядку элементы списка из параметра person.

### **HW_3**

**1. Необходимо залогиниться**

POST

http://162.55.220.72:5005/login

login : ***

password : ***

Приходящий токен необходимо передать во все остальные запросы, 
так как дальше все запросы требуют наличие токена.


**2. http://162.55.220.72:5005/user_info**

request  (RAW JSON)

POST

age: int
salary: int
name: str
auth_token


response:

    {
        start_qa_salary':salary,
        'qa_salary_after_6_months': salary * 2,
        'qa_salary_after_12_months': salary * 2.9,
        'person':   {
            'u_name':[user_name, salary, age],
            'u_age':age,
            'u_salary_1.5_year': salary * 4
                    }
    }

*Тесты:*
* Статус код 200;
* Проверка структуры json в ответе;
* В ответе указаны коэффициенты умножения salary, напишите тесты по проверке правильности результата перемножения на коэффициент;
* Достать значение из поля 'u_salary_1.5_year' и 
передать в поле salary запроса http://162.55.220.72:5005/get_test_user;

 **3. http://162.55.220.72:5005/new_data**
 
request 

POST

age: int
salary: int
name: str
auth_token

response:

    {
        'name':name,
        'age': int(age),
        'salary': [salary, str(salary*2), str(salary*3)]
    }

*Тесты:*
* Статус код 200
* Проверка структуры json в ответе.
* В ответе указаны коэффициенты умножения salary, напишите тесты по проверке правильности результата перемножения на коэффициент.
* проверить, что 2-й элемент массива salary больше 1-го и 0-го

 **4. http://162.55.220.72:5005/test_pet_info**

request 

POST

age: int
weight: int
name: str
auth_token

response:

    {
        'name': name,
        'age': age,
        'daily_food':weight * 0.012,
        'daily_sleep': weight * 2.5
    }


*Тесты:*
* Статус код 200
* Проверка структуры json в ответе.
* В ответе указаны коэффициенты умножения weight, напишите тесты по проверке правильности результата перемножения на коэффициент.


 **5. http://162.55.220.72:5005/get_test_user**

request:

POST

age: int
salary: int
name: str
auth_token

response:

    {
        'name': name,
        'age':age,
        'salary': salary,
        'family':   {
            'children':[['Alex', 24],['Kate', 12]],
            'u_salary_1.5_year': salary * 4
                    }
    }

*Тесты:*
* Статус код 200
* Проверка структуры json в ответе.
* Проверить что занчение поля name = значению переменной name из окружения
* Проверить что занчение поля age в ответе соответсвует отправленному в запросе значению поля age

 **6. http://162.55.220.72:5005/currency**

request:

POST

auth_token

response: Передаётся список массив объектов:

        [
            {
                "Cur_Abbreviation": str,
                "Cur_ID": int,
                "Cur_Name": str
            }
            …
            {
                "Cur_Abbreviation": str,
                "Cur_ID": int,
                "Cur_Name": str
            }
        ]

*Тесты:*
* Можете взять любой объект из присланного списка, используйте js random.
В объекте возьмите Cur_ID и передать через окружение в следующий запрос.

 **7) http://162.55.220.72:5005/curr_byn**

request 

POST

auth_token

curr_code: int

response:

    {
        "Cur_Abbreviation": str
        "Cur_ID": int,
        "Cur_Name": str,
        "Cur_OfficialRate": float,
        "Cur_Scale": int,
        "Date": str
    }

*Тесты:*
* Статус код 200
* Проверка структуры json в ответе.

 **8.**

 1. получить список валют;
 2. итерировать список валют;
 3. в каждой итерации отправлять запрос на сервер для получения курса каждой валюты;
 4. если возвращается 500 код, переходим к следующей итреации;
 5. если получаем 200 код, проверяем response json на наличие поля "Cur_OfficialRate";
 6. если поле есть, пишем в консоль инфу про фалюту в виде response:

        {
            "Cur_Abbreviation": str
            "Cur_ID": int,
            "Cur_Name": str,
            "Cur_OfficialRate": float,
            "Cur_Scale": int,
            "Date": str
        }

 7. переходим к следующей итерации.
