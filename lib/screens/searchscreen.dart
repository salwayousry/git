import 'package:flutter/material.dart';

class SearchScreen extends  StatelessWidget{
  static String roteName="SearchScreen";
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Center(
        child: Text("البحث",style: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 22,
          color: Colors.black
        ),),
      ),
      leading: Icon(Icons.arrow_back_ios_new,color: Colors.black,),
    ),body: Column(
       children: [
         Column(
           children: [
             Container(
               height: 36,
               child: TextField(
                 maxLines: 1,
                 textAlign: TextAlign.right,
                 decoration: InputDecoration(
                   filled: true,
                   suffixIcon:
                   Icon(Icons.search, color: Theme.of(context).iconTheme.color),
                   border: OutlineInputBorder(
                       borderSide: BorderSide.none,
                       ),
                   fillColor: Theme.of(context).inputDecorationTheme.fillColor,
                   contentPadding: EdgeInsets.zero,
                   hintText: 'ابحث عن خدمة او موظف',
                 ),
               ),
             ),
           ],
         ),
         Divider(color: Colors.grey[300],),
         SizedBox(height: 10,),
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceAround,
           children: [
             Container(
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(10)
               ),
               child: ElevatedButton(onPressed: (){},
                   
                   style: ElevatedButton.styleFrom(
                     primary: Colors.pink[100], // Background color
                   ),
                   child: Text("مسح",style: TextStyle(
                     color: Colors.pink[900],
                     fontWeight: FontWeight.bold
                   ),)


               ),
             ),
             Text('النتائج السابقة',style: TextStyle(
               fontWeight: FontWeight.w500,
               fontSize: 20,

             ),),
           ],
         ),
         SizedBox(height: 10,),
         Column(

           children: [
             Container(
               alignment: Alignment.centerRight,
               child: Text('الخدمات',style: TextStyle(
                 fontSize: 20,
                 fontWeight: FontWeight.w500
               ),),
             )
           ],
         ),
         SizedBox(height: 10,),
         Container(
           alignment: Alignment.centerRight,
           child: Row(
             mainAxisAlignment: MainAxisAlignment.end,
             children: [

               Text('الاجازات',style: TextStyle(
                 fontWeight: FontWeight.w500,
                 fontSize: 20
               ),),
               SizedBox(width: 10,),
               CircleAvatar(
                 backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9'
                     'GcRquvBriG18Pwo4Wopq075jrNpMCXRT8LJQwsC0ZmIg9L39u27waMnkxM-5tTETtvy8z7g&usqp=CAU'),

               ),
             ],
           ),
         ),
         Divider(color: Colors.grey[300],),
         Row(
           mainAxisAlignment: MainAxisAlignment.end,
           children: [

             Text('الحضور',style: TextStyle(
                 fontWeight: FontWeight.w500,
                 fontSize: 20
             ),),
             SizedBox(width: 10,),
             CircleAvatar(
               backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxrcGNN0y_Ql5YdtM_MJAegqbOfg0ovGNJyQ&usqp=CAU'),

             ),
           ],
         ),
         Divider(color: Colors.grey[300],),
         Row(
           mainAxisAlignment: MainAxisAlignment.end,
           children: [
             Text('مشكورين',style: TextStyle(
                 fontWeight: FontWeight.w500,
                 fontSize: 20
             ),),
             SizedBox(width: 10,),
             CircleAvatar(
               backgroundImage: NetworkImage('data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBUSEhESERUVEhIRFRkYEhIaEhwYHBwYGBwcGRkWHRgcIS4lHB4uHxgYJjgmKy8xNTU1GiQ7QDszPy40NTEBDAwMEA8QHxISHjQsJSc1NDQ3PzE0MTQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDExNP/AABEIANcA6gMBIgACEQEDEQH/xAAbAAEAAgMBAQAAAAAAAAAAAAAAAQcEBQYCA//EAEYQAAIBAgEFCQ0HAwMFAAAAAAABAgMEEQUGEiExBxdBUVJhcZGSEyIzQlNygZOhsbLR0hQVNDVzgsEyYuEWI/Bkg6LC8f/EABkBAQADAQEAAAAAAAAAAAAAAAABAwQCBf/EACgRAQACAQIFAwUBAQAAAAAAAAABAgMREgQTITFRFDJBIjNCUoEjYf/aAAwDAQACEQMRAD8AuYAAAAAAAAAAAAAAAAAAAAAAAEAHFZ+5xSoJW1GWjUmsakltjF44JcTfHxHVKze2kImYiNZbzKec1rbNxqVY6a2wj30l0pbPSfGxzvs60lGNVRk9imnHH0vV7Sscj5Dr3cpKlFYJ99OTwim+N8L6z7ZZzZuLSOnUjGcOGcG5JP8AuTNccPj12zbqq3276dFzoFZZjZzSpzha15OVObUaU2/6ZPZHF+K9nM9RZplyY5x20lZW0WjWEgA4dAAAAAAAAAAAAAAAAAAAAAAAAAAAAACCkM4bnut3cTxx0qklF80Xox9iRc2ULhUqVWo/EhKXUmylMlUHWuKMNrqVI49eL9zNnCRputPxCnL10hcGQcnxt7elTisNGKcuNyaxk3z4szq1GM4yjNKUZLCSexp7UfVIYGSZ1nVbp00UnnFkt2lzOksdDHSpv+2WuPVg16C1M1cpfarSlUbxmlo1PPjqb9Op+k5ndNtO9oVltTlTb5pa17UyNy+51XNJ8DhOK6U4yfsibMn14It8wpr9NtqwQAYl4AAAAAAAAAAAAAAAAAAAAAAAAAAAIMTKN9C3pzq1HowgsXzvgS422IjUctuj5U0KEbeL7+u8Zc0I68fS8F1mh3OsnupcyrNd5Qi8H/fLVh1Ys0GU76peXEqjTc6slGEFrwWyMFxLn42y2M2skq1t4U/HffVHxye30LZ6Dbf/ACw7fmVMfVbX4bkMkhmJc5PdEinZ9FSGHtOb3M5P7VVXHRfxxNxul3SjQo0se+nPSw5oL5v2GBuX2+NS5qcEYxh6ZPS/9fabK9OHlRP3FkAAxrwAAAAAAAAAAAAAAAAAAAAAAAEAGBlbKlO1pyq1paMVsW1t8CiuFiImZ0g10ZVetGEJTm1GEVjKTeCSXC2VLnbnHK8qaMO9t6beguU9mnL+FwYnyzizmq3ktF95RTxjSXDxSk/GfsRuM0M0nVcbi6jhTTUoU2tcmtjkuCPNwm7Hjrhjffv8QotabTpHZm5iZu6OF3WjhKS/2YNbE/HfTwHehRWCPWBkyXm9tZW1rFY0CGDR51ZX+yW05p9/Pvaa4dKXD6NbOa1m0xEJmdFeZ7ZRVe7novGFFaEPRrm+17jvMxcn9xs4OX9VZ90l0SS0V2Un6Stc38mSurmnS1uMpaVWX9ieMnjxvZ0suyMUkklgksEuZGviZitYxx8KsfWZs9gAxrgAAAAAAAAAAAAAAAAAAAAAAIAxMo30LelKrVejCKxfG3wJLhbKdy3lepeVtOWO3CnTWtRT2JYbW9WL2vE2ufGX/tNXuVOWNGjLBf3TWKcudLYvSzbZg5vYKN3VisX4CLXB5R8/F6TbjrGKm+3f4UWmbW2x2ZWauZ6pqNa5SlVffQpvWodK2OXsO2SJSJMl72vOtl1axWNIASQzlL4160YQlOTUYxTbk9iSKezpy27ys5rVSh3tKPNwyw43/B0W6PlaWlC0g8I4KdXnxx0Y9GpvqMTMTNxV5K5rLGlCX+3F+NJbW/7Vq6WbcNa468y38U3mbW2w6bMTIjtqHdKiwrV8JNcMY+LDp4X08x1QBjtebWm0rYjSNEgAhIAAAAAAAAAAAAAAAAAAAAAhnKZ95c+zUe5U3hWrppNbYx2Sn/B0N/dwoU51ajwhCLcn0cC429hTGVL+peXE6jTc6klGEFrwWyEF/wA1ts0cPi3W1ntCvJbSNGXmrkV3ddQa/wBqGEqr5lqUPSXFTiklFLBJYJcSWo1GbOR1Z28YbZy76pLjk+DoWxG6Rzny77dO0JpXSEokApdhDJIYFQ5+pq/qY8MINdGDw9qZ0Gbed1tb2tGjU04ypxwlhTbWOLeOKN1nJm1C9UZaTp1YLCNRLHFbdGS4UcnLc+uU3o1KTXA++XsNtb4r0it500UTW0W1q6f/AF5Zcqp6qQ/15Z8qp6qXyOW3v7nl0e1L5B7n9zy6Pal8iOXg/ZO6/h1f+u7Llz9VP5HqnnxZSeHdJLndKaXXgci9z+65VHtP5Hzq5iXcVjHucuZTw96HKwfsbr+Fk2WVKFfwNWE+ZSWPVtM4oy9ybXtpJ1ac6TX9M9nVOL1deJ0Wb2e1Wi4wum6tLUtPbOPP/cvac24adNaTqmMsdrdFpA+NCtGpGM4NSjJJxknimnwn2Mq1B8Lu7hSg51ZKEFtlJ4I+5Vu6LlGU7nuGLVOhFPR4HOS0tJ9CaX/0sxY5vba5vbbGrpauf1pF4JVZLlKnq9GLR53wbXk1vVr6iu7fJ0pxUsUk9mPFxn0+6JcqPUzd6XHHeVPNlYG+Da8mt6tfUN8G15Nb1a+or/7olyo9TH3RLlR6mR6XEcyywN8C15NbsL5jfBteTW7C+ZX/AN0S5Uepk/c8uXHqZPpcRzLLAhn/AGjaTVWK43T1LqZ0lhfU68FUozjOD4U+HifEyl6+TJxjKWMXgsWuYy83M4J2VSU0nKE1hOnpYJvxZY8DXu1FeThI01omuWdfqXOCvt8j/pn61fSa7LmfNS4pSpUodw0tUpaelJx5K1LDHjKI4bJM9nc5ax8vOfOcX2ifcKUsaNJ980/65Lb6EbDc+yC2/tdValiqEWuHY5/wvSaHNXN6V5UTkmqFNrTklhpYeJF+/iLdo01CKjFKMYrBJbElwIty3jHXl1/rmtZtO6X0ij0AY1wAAAAA8kkgDzgMD0APOAwJAHxrUozi4zipRlqaaxTXOis89c2FbYV6CwoyeE4chvZh/a9nMWka7L1uqltcQlsdOXWlin1otxZJpaNHF6xMOK3OMrtTlaTeMWnOljwNf1RXEmu+6yxiks1qrhe2rWpurGL6Jd611Nl2nfFUiL6x8oxTrUKez6/MLj/t/BEuEp/Pn8wuP2fBE64P3/xGb2vVh4OHmmQY9h4OHmmSjbbuphAJBCUAkAfK68HPzH7jS5ItFXuKNFycVVlouSWtam8fYbq68HPzH7jXZq/jrX9VfDInWYpaYRp1h2C3OoeXn2I/M9U9zukmnKtUkk9ccIrHmx14HcoHm8/J5aNlfDFs7SFGEadOKhCKwSX/ADaZOBIKu86uwkAAAAAAAAAAAAABDYEM1Wcl3GlaV5t+JKK86S0UvaffKeUIW8HUqaWiuTByfs2enBFXZ05yyvJKMU4UIPGMcdbfKlh7uctwYrZLdOzi9tsMbNOg6l9bJeLUU30Qxl/DLpOB3OMjOMZXdRa5pxpLijj3z5ter0HfHfE3i1+nwjFGkBT+fP5hcfs+CJcBT+fP5hcfs+CJ1wfv/iM3terDwcPNMlGNYeDh5pko227qgAEAAAPldeDn5j9xrs1fx1r+qvhkbG68HPzH7jXZq/jrX9VfDImft2R+ULrRJCJPIawAAAAAAAAAAAAAAAAhokAeJRxK1z/zfhR0bmklGE5aNSC2KT/pklwYvaWYc3n3h9graWHi6PTpLAtwWmt40cXiJq0G5nlB41raT1Yd0jr2PUppf+L6ywyptzzH7dHDkTx6MF/OBbJ3xVYjJOiMU61Cn8+fzC4/Z8ES4Cn8+fzC4/Z8ETrg/f8AxGb2vVh4OHmmSjGsPBw80yUbbd1QACAAAHyuvBz8x+412av461/VXwyNjdeDn5j9xrs1fx1r+qvhkTb7dkflC60SQiTyGsAAAAAAAAAAAAAAAAIbJPMgIxOA3SMrRcYWsWm9JTq69iX9MXzv+DNz0yhe28XKm4KjJ4OcYvTjjx4vBdKK/wAnWk7qvGmpd/VlrqTeOvxm+GTNfDYo99u0KclvxdfuY2Lc69w1qjFU49LwlL2KPWWKYOScnQtaMKNNd7Ba3wt8MnzszjPlvvvMrK12xoFP58/mFx+z4IlwFP58/mFx+z4Il/B+/wDjjN7Xqw8HDzTJRjWHg4eaZKNtu6oABAAAD5XXg5+Y/ca7NX8da/qr4ZGxuvBz81+412av461/VXwyE/bsflC60SQiTyWoAAAAAAAAAAAAAAAAIZJDAxL+2jVpVKc1jGcWmulFK5NqOlcUZJ99Tqw186kov+S58q3caFGpVnqjTi2+rUuvAprJFF1bmhBa5Tqwxw87Sk+jDE2cN7La9lOX3QvMkgkxrkFP58/mFx+z4IlwFP58/mFx+z4Imrg/f/FWb2vVh4OHmmSjGsPBw80yUbbd1QQSyDkAZ+RrD7RVUG8IpOUuPRTWpPjxZ1tTN63lDRUdF4apJvHpx4Sq+atZ0l1WkzGqvrrwc/NfuNfmr+Otf1V8MjbZVt3T7vTe2CksePVqNTmr+Otf1V8Mi6Z1xTMOPyhdaJIQPJa0gAAAAAAAAAAAAAAAhmtyzlH7NSlV0J1FHaoJaud47Fz6zZHicU1g9ae1CP8Aop7OLOWreNRlhTpReMYJ7XwSk+F+w6Xc+zflF/a60XFtNUYtYPCW2bXBq1L0nH5w2io3VxThqjCTcVxJ98l7S38hVnO1t5vbKlBvp0Ubs8xXHEV7SopGtpmWxABhXoKfz5/MLj9nwRLgKr3RMnyhd92wbhXjHCXApRSi104JM0cLaIydVeWPpYth4OHmmQaK2ylKnFR0VJLUnrWriPsssS5C7X+D0ZpOrPEtuDUfe8uQu1/gfe8uQu1/gjZY3Q6XI9/9nqqo1jFrRmlyXr1LmwR1lTOSgoaSk5Sw1QUXj0PVgirvveXIXa/wPveXIXa/wVX4bdOsu65NIbfKld1O7VJbZqTa4sVqRocj3aoXFGtJOUaUtJxW1rBrV1nutlOU4uOilpLBvHHb6D75u5Dne1JQi9CMVjKo44pcUcONlulaUmLdnGs2t0dkt0Oj5GqvTH5nV5Ov4XFONSlLThJan/DXAyvcp5gVqVOU6U1XlHxFHRk1w4Ytpvm4TnsmZXr2k26UnDX38Gu9bXA4vYzJODHev+c9V2+1Z+pd+IxK1juh1ktdGm3x6cl7MCd8Wt5Cn6yXyKvTZPDrm1WViMStd8Wt5Cn6yXyG+LW8hT9ZL5D02Twc2qysRiVrvi1vIU+3L5DfFreQp+sl8h6bJ4ObVZWIxK13xa3kKfbl8hvi1vIU/WS+Q9Nk8HNqsrEYla74tbyFP1kvkN8Wt5Cn6yXyHpsng5tVlYjErXfFreQp+sl8hvi1vIU/WS+Q9Nk8HNqsk+VerGEZSm1GMU3JvYktrK5nuh12tVGnF8enJ+zA0WWM5Li6WjVmow26EVox9PDLoxJrwt5nr0ROWPhiZXu3cXFWpFP/AHZtwXM3hFdWBdOS7fuVCjT4YU4xfSkk/aV/mPmzKVSFzXi404a6cGtcpcEsH4q29PQWWOJvEzFa/BjiY1mUgAzLUGNfWVOvTlTqxjOEtqa/5g+cAQOXq7n1s23GdaCfApp+1rE873dt5St2o/SAWc/J5c7Kp3u7fylbtR+kb3dv5St1x+kAc/J+yNlfCN7u38pW64/STvd2/lK3aj9IA5+TybK+CO57bJrGdZrhWlFY9UTp8nZPp28FToxUIrgXvb4WAc2yWt3lMREdmWajKub1tcvGrTWm/HXey61t9IBETMT0TLSvc+teCdZfvX0k73tty63aj9IB3z8nlGyvg3vbbl1u1H6Rve23LrdqP0gDn5P2Rsr4N7225dbtR+kb3tty63aj9IA5+T9k7K+De9tuXW7UfpG97bcut2o/SAOfk/Y2V8G97bcut2o/SN7225dbtR+kAc/J+xsr4N7225dbtR+kje+tuXW7a+kAc/'
                   'J5NlfD1Dc+tVtlWfN3RL3I2eT81rSg1KFJSktkptza6MQBOS895TFKt4SAVpAAB//Z'),

             ),
           ],
         ),
         Divider(color: Colors.grey[300],),
         Row(
           mainAxisAlignment: MainAxisAlignment.end,
           children: [

             Text('وجود الفريق',style: TextStyle(
                 fontWeight: FontWeight.w500,
                 fontSize: 20
             ),),
             SizedBox(width: 10,),
             CircleAvatar(
               backgroundImage: NetworkImage('data:image/png;base64,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'
                   'qHw/nkovH8eCu+fh8L756Hw/nkovH8eCu+fh8L75+8r/A+OvcDDN0WvnAAAAABJRU5ErkJggg=='),

             ),
           ],
         ),SizedBox(height: 20,),
         Container(
           alignment: Alignment.centerRight,
           child: Column(
             children: [
               Text('الموظفون',style: TextStyle(
                 fontSize: 20,
                 fontWeight: FontWeight.w500
               ),)
             ],
           ),
         ),
         SizedBox(height: 20,),
         Row(
           mainAxisAlignment: MainAxisAlignment.end,
           children: [
             Text('جميل الجابر',style: TextStyle(
                 fontWeight: FontWeight.w500,
                 fontSize: 20
             ),),
             SizedBox(width: 10,),
             CircleAvatar(
               backgroundImage: NetworkImage('data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoGCBUVExcSExUXFxcZGhwaGxoaGhogHRoaHxgcIR0cHCEfHisjIB0oHx8dJDUkKCwuMjIyGiE3PDcwOysxMi4BCwsLDw4OFxARGDEoHygxMTEyMTMuMS4xLi4xLi4uLi4xMTEuLi4xMTExOy4xMS4uMTE7MS4xMTEuMTE7LjEuLv/AABEIAOMA3gMBIgACEQEDEQH/xAAcAAACAwEBAQEAAAAAAAAAAAAABQMEBgcCAQj/xAA/EAACAQIEBQIDBwIFAwMFAAABAgMAEQQSITEFEyJBUQZhMnGBFCNCUpGhsTNiJHLB0fAHFbJT4fFDY4Kiwv/EABgBAQEBAQEAAAAAAAAAAAAAAAABAwIE/8QAIhEBAQEBAAEEAgMBAAAAAAAAAAECESEDMUFREiIyYXET/9oADAMBAAIRAxEAPwDs1FFFAUUUUBRRRQFFFFAUV5JtqdBWC9S/9S4IiY8KhxLjQsDliU+C9jmP+UEe4oN8TSfG8dRUlaMF+UNT8KFvy52stx310rjnG/WeMxFuZMsaq2ZUiW1iNrkklre/6UjxnEpJDeSSeQ3v1SNa42Nr2uPlV4O4zcVm5mhASOISyZR0tmGi52AWw1NwdhVTD4vF5UTMxlmJYmyskKbgi2Y2I0F977CuJtxGTW5mN9wZXNx79WtS4b1BLG4lWSdHAsGzsSB41vp7bU4O44bjEsjERFWSK3MYr1sbagIOpT80G2lWcD6iVw8jry4lbKJGYWJ+l7a6dWU67Vxcet5njMMkuYEg5mAEmjX+MWbetDhfXaSuoxClYltbkt1GwAtIGNpEPdTTg67gcUJEDqGAPkW+o8j3qzXNeFep4DJnhkESwg2jAIjlQtr0nqWQDtrtpeuh4ScOgddj/wA7VBPRRRQFFFFAUUUUBRRRQFFFFAUUUUBRRRQFFFFAUUVR45jeTh5Z7X5cbvbzlUm37UHMP+snqORp/wDt0RKoqq0uU2LswuqE/kAsSO+YVzx2RLB217KP9hT/AIFwOfFqcVMzDnNcHXPM5OrL0nLEvkjYACtxw7gsMDiGFFCwssk0hLB3PZWYwklQdcqt86o5theGYp7mPDlVCh80nSMpNltfUknYAU54T6PxDtH9okEKuHa0aF3CILkteyr7A3Pe1bzDqOqXJGDLKzMy5swhXbmPJ1HM1iAtgb2GgNRuheMQoZMhzF9eqRmN2Zza9z4Fv9KdGK416ZRIc+HxDSvuq5AwI/IzKBZ/mAPakmJ4Lj4zlfCyHpznKA9ltfXKTb611PAcIkiDHDnlu1rsQWvbYEE6jfT3r4MJkT7PAuSWTNnBzZZBuwWUHPGe6i9htrTo41iJALCaJkvtmQrf5XAvUX2eFvhJQ+x0/Sux8QSJ3IZUMOHjKssqgrFIRtJb4wbfGuoPkGspjfRkTogRGWZyzmO9mCX+KL8DoLi17E37U6cYY4aRfgcOPGx/2p/6T9dYrBPl+KMm7RSbHyUb8J/Ue1eOJekZ43cYc/aFj+PKMrp7Mp3+hrPfab3RwDbQhu1EfpT0l6ihx0POgJFjldD8SNa9j/IOxp3XEf8AofxmGCeSCRmUzlBHf4My5uknsxvp+lduqKKKKKAooooCiiigKKKKAooooCiiigKKKKArIetvUCpmwkas8rDqULpkYG/UdPF/8w81r65R62ldp3E2IVIxcKqaOQTJls3tlUWHg3oKEHGcVzhJzIrhOUEANo1spygXFms2rC1PuHJJJC0WoVyC3XISfa5Y6HuO9ZnhKxZy4DADI7M42BiXZjvtcnzWjw+IeVbITHH7aMfmdx8hXOtTM8tMYuvY25C3vPIoNh06aAbDKNf2pjhMVCg6VdvfLb/yIpTw/AhRsP0q/Eg8VzN2tP8AlJ8rsnEl7Rt+q1Rx/EVtdom+jCh1NVsQhItUu66npZJsRiY5CUWN1Rc0uILWCyxDdXIJJcaEH+2vETyNJdZCMRID9kYqP6Gj5XW2n5STrtUXE8MMyuTorAmwvdb9SkdwRparMKKqmSQSf4hsuGK6SxRsLlL/AIVBGa3g11jXYy9TEzfHsliQuWw2HPKxIUSSutjHn7o57g3/AHpP6p4OmIVooYVVsORzrLYNe2cRnfTU/wAVpViZkGFQxYvMWE0hKqwX+4LqX8H2qGWJXH2GJn5ceZneTMJYrG6lNPvY9SCQToTXbJz7g3oPGNjFiVLRI6O0pIsEDA6dy2mlv2r9BVzXhmLSDFRcqUE5TG0bM33ii9ihJsToLfL3ro6sCARqDrQe6KKKAooooCiiigKKKKAooooCiiigKKKKCvjpSsbuoBYKSoPdraD6mw+tclxLxpIrx4eQykRO3MGZYyZGWQBtrgudtBaug+qpFYpDzArr9/Y7NkICBvbmFNO9qx/FcNi3S8rxYcfeKwQ6gsAdQTYnNfb81BieK4qVsSmFkyqFAZ1U3UKpOVfpYE/SnmE9WxRgKY3t2ItqP1rK8Pw3Mxs4BLXVrMfxAka/WtVicGoABEaqN2YCw9h71xrnfL0enL+Pg74b60wz2W7KT2IGn1BrSxSgjTUVzOVMJcBJImY9vhJ82I0vW09MvmTLf4dNal8O4k9QcY5K3A3rJ4z1lJe0cYb3s3+lNvUpAazbf6UpXERoCzBwoIWyKDYnYM22Y+L3qS/0mv8AVQ+osTJ/9DT2v/rXvgvqZ8PKZWDkAENETtpoVvtavsHGYZNYnYG9sri2vex/+a94ng/PkjCdLMyi/sTrfzV+TnZ5vY0EXHcO0acxCs8ynNIqCN0BOts1r6d6YPGjqMFhpM0cajmNezAEjqjmvlz31KnQ660m9TRSOXd41jmUCKCRWLRygn4ddAxAsfFJOGQNGZJo2IiiBR4xe6sFF1Xsyk+fetHmPPUMqq6iOJJI4pFF9b3zAHtcNqbjse9jXRfTzA4eMC/SMvVoeklbH30rm7TNNhkgQNE6xmaQqdY1/DowuQ21u2ntXRvTOb7NEWbOSt81rZgdjb3GtENKKKKAooooCiiigKKKKAooooCiiigKKKimlVFLsQqqCSSbAAbk0GQ9TTxSYgwzZk5QWYMVGVwB0IWIubS2bL5ArNcaVVzR4wCfENy5SoByEr0hjbQEra42uKc4jEMCVxySFLnFGVSTGMrfdw6Dt06dztS/jrYyOPIWz5Ud5JmW3S6kohuNWAXW3ciisf6Iu2NckDRNLeC5NvpoPpWk4zw5ziI5gOYiG4jNgL+T2J+dZf0CVXFXGgkjzBb3K2Ox/WuqIgI1rLX8noxP1jB4H0zGMQZ+tlzMyxOQVQtq30vWw4XDkUgdrD6eKuSRgDaocMDkJ8mltrvGZC3G4fO9+/8AzWocXgA8D4ZkVom1Kkag/mBFiGv3qeObrNNcMoIvSOtyViE9LqIxCq2QNmvqST5ue4p3DFHCg5rlbgqr2JsxU2JtsBvc0/dBVVXkz5ljzRIrtLoCXsOmNQd2NyfoKs81lr9cE/FMNy1hgzKYo4+ZFNqMs1rDML2Ia+gqLC4N35UKSfZ8U2aR47Fkc5uotbQg7gbV4lSOQ5yWMOJk5hb4eVyh0RsNgtwQT50q5DNkSXEYyMAsqxxzREXdT8OUDUHW9+/gVo86zjJjml52GkyZkgV40u7A/wBRj35Z+Xitb6TWMYZBE2ZRfW5Ot9jfvSGLDYiMxJBOJEjEkshkYZi2TojYA3C3N/pT/wBLZvs0edFRwLOiG6q3cL7UQ2ooooCiiigKKKKAooooCiiigKKKKApJ6vnjWApOAY5Dy3uSAIyCXJI1tlFvmRTusx6zxDqyKUD4cq5nBW9o1Fz3FyfhA/uJ7UCKQiBP8QgmgY8+SRTcIVI5MYW5JFgoHk0t9YxyR4WRHkd4z95GzEf1nNxE5BN0RdNdyR4phERCvPj5c0D2mlUjrA0GHSJfoFAPfWkHrUxx4TIsg5M8u2bOUmDF5QLbAMcvsF96KyfB5gmLjewVg3LkAvrmAsfFtLV1nBSaCuUZjkkBOikOHsLlkbMirbVtN66DwDGiSNXB3A/cVnufLf0teLGgkcW+lJ345EsRHjc37ijifFViFrZnI6VHf51ksVhZ5GLmM9R1sv7mw/epGvZKvnjEDsckgzDW2v6bVrMBP0j3FYFMBOpvy1BHYgE+xFNeF8fKMI8QuU238fOnD8/trZ5NKWtGzRMMNKRNKyGRS4HLiUnVVtpcD96nN5LKljfztbck/S9QTYiOUNiERY5+pMOC2V2AGXYizeba2t2tVx9svW17ZLcU4k5syI5SUiCRFGWSIAnM4UaMSTfbbWnPD8M5kEMbxTYeEp0MFzIQtxqN27321pdhS5l5sRDy4aMpJC3QZJCBdi17ZSBoxqzw4ARoIJJcPNPK5ZJVuxIHUDobKOzHfxWjB9nOFdJJSRhZcSWiVzmuUzAE6aainfoLiiS85EUhVcEEixa4sbjsRYexBB70k9WzyrGYJERvucgcKBmd2A6L/CVTMdvel/oriLJJGUJSGO6ZJFyuyaAlST1Ip1B3HyIsR1aiiigKKKKAooooCiiigKKKKAooooCsRxaVjPJPhyz5SEmTMpHLhDN0LqczuSl/7TWvxuIWNC7EDYC/dibKPqSBWAwqc5s6FYsSSDKFZgXhiZje2wDyhtfynfWgMMza4nCM2Y2klgZdWeQZYI9BZMlgbDYa1mvVMoMscUMS8tZLEBdC+plax0F3vbXtTrH8TREbFsZMNPEc0kYJZWmmFlVu7ZFAbwBbzWdw2HNoRBiSW5bOVILCXKOom/wsSTRSZDdc6oxMZzKl9QpuCSD52sPFOfReLKZoWtpfQa/S/wBaVKSVGIiyZ0ukxK/Cv4rqdx8qJMsE6vGDypAGU7gne/sT4O1SzsdYvK1GN4dLJO0kbhbAWLC4GmwHmlsfB8S7EnE2Ya6jL/LU69L8REoIN7+T38mp+NcLkfqjdbeDbf2rOXnivVjU9+Mxi+AuOp5rsdTlN7/PU2owPpuR7lpXbwDa38U0wnB5uZ1EBPOlj8u4NOpVEYWNfjchV9ydB+9XV+l1rOp7DhcZ5cccU/LnJyKLXuFF3B722F6942ZJpuTOir9nCkTXy/faEKpKgAHx3qWCWIRvJLHJBKi8hWuTck/FGRa9zqT2+lVMcSqpgsURLzWZml+HLGBoxuPi7XJOldycjx6vb1CyGXlYfEPysRI4diV+OMOWWMMpGo8U3lk+9kmxUNliRgksbki3i19H/YVTilMfMknBaBCiQuFRytl/q6W0PcjxRNC0OGjiiaGdJLuyS3BkLNfmL3yjeqjMeqJRI0UCNJLE1pC7symPWz3OwGntcj2pthOGxsY42kkMKDpjKEkNb487dZt2sLWrILi2lnbl5lXNoL3KnuF8a32t7WrTYLg8gGbIRfW50N/rRHVuDYgyQxuRYlbEe40P7irtZv0HiWMLQyXzxt33Ktqp/W4+laSgKKKKAooooCiiigKKKKAooqKaQKpY7KCT8gKDN+sXd3jhVcoNyJs39OVrpGcm7WJv4vbxSJwkxEeIIimAz3IKs+HjNgGN9M8gDFfBA71FxVsPPiXDzOeYph8cljmYsWbTpFyO2leOKY0KmTGhwbiWNrDKUQ5Yoi1vichXbzeiqfGZMRJ0cuMTIQZlj6s0rldbA/8AphdN9ar+qRHnkWWGWNkhZUkA6GuRe1tAb6C/vX3gUMMipIZphJLM5zDMCW/FmB0tpoa9+pHlUYhjlliZ4lAzC6qq3LXGmYHzegziyKuXErmSJ7LMuXUsTYZzbVPl2r0+FYq2EfSMAtC19SQb9I8fPtUi8RWQZWYOpBFpFBFj2zLt9amxEMcixjlleWcytHZ7H/ytQK/TPEShyE6i5ttde5rQYn1ISp9/2Fx+1v5pNxaHmOWBJawOYqwII0/ik80Elt79h5t4qcnWk/KRrP8Av9gTf2uO+lxptfX9qtcBkfFSSJHIqOABESRmJbQsPORbnTvasEySbBSSSAANyewHvXTPSeFiw+HCTpHHOjMInYsC0p+KzeA1lHyNXkS6vsbyWzrh8RGRHALpLmORgoGr66N7HWlz45oonnL/AGiKU5YQSQ3UTdTf8NvrVmaOSGNcLMskqS3MkqkkqWbW/t718jYrLnhkVsNCLPHvkIUnMhP4u16OHvC4V4+VDhjmhDM8ourWFv6Z9r7DzWb9V4uJicQI5I2VCYs2VSjJplAHlmpucTHHh5MdE3Jlm6ApcWGdrCSx1uBrcUi9QRN9pw+DdldMyuXtdsqC7cywvq5U/Sga+i+DJDGjSayyFb6gNd7m5Y/Atgx06jbfUU9GMUNYxotmfOuQtIijSPPcF7MepnAIAsPJryiAayWyFikmjmKQKthnQ5gLsLZjbRTVc9MQDMwCQlCbr0K7HNLDY5XRjZQoYEAWFA59LYo83I4UF4xcgZcz3Ymyr05AvwsCb3rW1gEnySq9gHEscdkO7RxseWlx/TClsy6ZT+Jta3UMgZQym4IBB8gjSiJaKKKAooooCiiigKKKKApXx/GFFCpq7HRfzBdXA98v800rAerMcWxRytYRWVf825P62H0oK2NkR5ZOeEbDYjoziytGgUGQuw1AtZQfJ96QeoMRM0q4XIJcswI1JQAIcipp+CMAZu7FqZY7iAjVlYI0OKUv94MoRtQwuN+pcx20QDvWf4BhlyhWxZZFLAiO2YljZbHcbg0Vt8Msq/ZlkwwfIoYyBh0MwOa6+1/rWJ4ksTwk4b7ovLIWjzEs4XMt1F7Wua2r4UrI5hxCty4BGuds5DKSSXF/lc1j+MzPaJZIkR1UPmTVcrsS2p0W4F+5udqDMHDuu5Fx2IsT9aEkbsCp/n5EaftTUYmy2YLorG5DjKb9GZfwltsu9+1eX5bXuhW2W5BWwzfKxuDuPFET+mRJLMIWLEspya7EanU3AFq0HEfRs/xARgeS+/zsLUx/6densjnFNcdJWMEW0J1Y3F+2nzrS8XmijhIa5JvlW+pJPtsKnHc3ZOOdYT0tIkqfaGEWYhUKEM5dj05bXItqb+Aa1mMzRty8XaXDQxKGkdOoyFhY3U3uB4qDFYrQviIjbKI4XUgs8jgq1h+EqDa/zqbEYeTDrFh4mMsbMWlLgNkiUdQ0OxqubeosPJIglxaE4hJCFRFY3WIbFb319t6gOFIWOLBSBZGvK8Utrup3DjsewHzr3DhVkdZ8IwMUN2WJSRmkINxY7fM18SQOHnRJkxEjrGVW+ZFUjMV8pa+vvpQR8cnBnidoBygjh2KZhkj+K1tAM2w72rOeiTz8fiMQM5jH3aFcumc5r2bewXaxq96zxaRfaHw8jgACFozfJcrut9rAV69A8LMeEsFzSPmmGUukisOldQQXFjew8Ggf5wU5oIBaJleZFUlHY687JZhlWwvl3JNCi75cqoTJFEyghmjdEvGUa2R41XrKsoIub2OlS4khy5vmEjQqsnxKChuI5oyQ/U+9hc3HioC9ze7C7zMShu0bIPvZYnHxIWGXK6nU22FB8QXyWLdYmlGUAF8vwtEpLESyHXKCVK3upvpqPR+JzQrG1syKui/CARcKpsMwXVSbbrWWxTHLlyqHlhzhARaScnQxjbOigschBJIqfDYwpIZkYG+S17gPGBaaR/8A7hewZfwEAnzQb+iq+DnDorrsRsdwe4PuDpViiCiiigKKKKAooooKXFsWIonka9gNwL2ubA/QmsBxnCymTQgyr1MLf1QNQyHYMbWOm9aX1nMWKQKGe4ZnWMoXUWsrZWIuPi+oFZbjfEJFjOIZ45REA4zLkYhxIjKVvraxNh3tQIeLzpJik5UbyxMzN1vorEWfIDuDa/1q36KRioKYNSWlyvchQoWQkMAdTbKPbak3DIBzoPvwCIycrHqu47dh/patL6LhDMp+2h3XnEA2uCOkNbwOs3/SirHGJcO0WJkkUQF3eFJMrXNxqWtpqdSazXqW65Yy4kiIyxaWy5UUasNrWLAgE1qeIYmYQRZuXiBLMLsq6GMDM5I2voe9Y3GhHkVoi4UgSWcfA5LEgDsQD8O1BArEsLMxOZX31AKkOQNuvsDroTpWt9E+lVYrNOAwT4FyjzoT7+T3pf6W4XndVUaDv3te5Pyv2rqeCwwRAoFrUR9sEVj4F/pWQ49OGnTM2XmlVQ2vYsOn9960H/cM+IMK5GjCEkgnMCGynMLWsTcDX8LVnsVi3hJDxO0bXhikUBimush76XsLflNFS4Yci7OY5cJCGyPcFkkGj3/M7Nc38k1UjjeHDtisPnbnkZYXUkKzto3k+astgsrLh4WjlwsdhMhtmDfEXJ7nuRXjBojtJxDDtIqJmBit0yBRbQfhv7UHjE4NJfucNIkTlg2IykhhlA7fOrZkkad8QkkbGOCwjz3AY30a1t7b1Dw5iWSd8MBJkZ53HSVB1SOx1a4sTSjiDwNhLqq4eWYFtSw+7V7tb2sKDLcVQ4vERwLFynJLyqWsA5NyddLZRfWt3ywRy1AYhY3VHWMyIGOZzDYKxsttNdW9qy/pOEsZcXIql3JskgkGZT02RgNySo371uJMMbhJCSFkXKj9coRFuShtcKX8kDKvvQVYpczBwRnMzyxO+Zo2YIbpINHjZEuNRYb1HhoM0YeLOF5ZlQF7clmPSqSizFWN3Ktm0+dSSYuOIgAgvZhpaRzna75j8Ckne19BS3FcWcnRRYbZrt+x6f0FAzGDBEqhgVk5YJhj0YLrIxvlQSObjMNhXyVEzXubmRpSGaEgsUKqpGYWRRbpG9taST4qRzeRi/i2w+g0H0rxodAAaDT8HxcmGKi+ePKgYWs2a3VIAdAL2FluLCtnFIGAZSCDqCNjXKcPI6fCSPbsfmNjTv0zxpoyQQWUm7IN1H508+49qI39FRQSq6h0IZWAII2INS0BRRRQFFFUOOYsQwSSllXKpsWYKMx0UXJAF2IH1oMdjp+bNJIqhirxOjZFEgjWRldARqw6CdT+Ksd6lYE5UjZiiOjiQZNXluLHW/SbfStE8FwqMtgGAySCFsgdWYMsi9r3OpO9Y7HYgTLLLJOQzcpWZr5L/GAgA8d6KcYJP8TGrQDSFr26rFeysaa8CkjTDyFsK8YVAmYKDIplzOwJ8BXXX51XwoZpyUxLf0Q4UhchW1r3O2uutNYlxK4ciKYT5pVQMFAyor5WBPfa2nigXTIPuhhZnDJAxEZ2YDQE3NgxY0gxbtJOwK2bNlZQb9Q03+lPuMyJJNKJ4JIiMkay5uk/eBgQQLL5+VQ+g+HGWUzONL3+ZvvQrZek+F8qMadRALG2/t8hVvj2LyLylLB5AV5irmEZOgzAHMCb2Fqs8SxiQRGRyoAIUZjYZmNlBPYXOp8A1lJHcuzlC8ol5jxkiPmIFtG0TnofKOq196I+LixGQ2YRdfJlyHNEVRdZBcXTILC/nTWvcUz4ONsQFaWI5Y4kVyckS3s5J+JmOtQxBowkUmSTDyIZHcoQVguTd+xkdyNtwtTxAx3xMP3mGjTLDCjH4T8TG99aKjERjjVcGVleW8syNbNIjeb6ra/7VXxskTSo+HkaEwskWUL0u7dRW3fKASza6A6VMScjY3DEc6U6LJYZUT4lAI0I87a1FwpZbHEphUULEXRWbNJnkB1K23bc37WFBIsqFJp4MaA8sqoHI02AVCDrc6m/vWc9YvJLLHg3VDKoVQ4uF11e2mgCgaHTW9aPirhRBHiYWUrZ2ljsIzJlOj2ta3nWszwyZjI+ILs5JZI2axtFmvmHe5+HXstBpYGjw0aopYWQJYG7Wvey30jW/e2Y+BVKbGu4KABEP4V7/wCYnqY/M1XhiZvJYn3JP+9NsJwyxAkvm/8ATWxb5t2UfOgVxQO5sgNwe1NcBwYs3V1N+Vf/AOjsK02A4OQBnsi/kTc/5m3P0ptBCqDKihR7UQjwvALDdE+QzH9Tp+1WTwdPzvm/N0/wRTVj2rxaqEUnCDqDKx+aIQfpalXFOANbMtrj8SAg/Vb/AMH6VrXFR1BmfS/GzC3InsqNfK/4cxP6AHv7mtyKz+N4bFKOtfr/AL+au8CRo15LMXCjoY7lfB9xt8rUDSiiigKz3rPEhViRmAV5BnzZcvLAN8xOwzFPratDWN9XzlplRS6lY3ylHjOaTls+R0Kk2soPbcUGb4uTHh+Xy+bmjSO6ujRtkXRrjqBFj+tIUEoSRuVGTzFIC9RNrKSRtotvFXvUs6PIIzMcr8tjDHYFZCEB1te2XcfOqeCEXKdknlUCa5yAg5nYAAgi5AorQGNBO5fCSMvKy5hYqygglQOx3FfRDhmXCopniYh2G6sBnzHP23P6V6eCYNOYZxIwiCouYFswBvcbKbkG9MeItIskRkgEoRLcwMMy9NnJB3Hy80CDirzLHKzZJY5ZGynMCUGQKjDtue1bL0Zw8RwKO9qw3DYIpDEILosjFniuTluxINztfKugroPE8XyIVVMgle4jD5gpyi7XKg5bLfU96BfxjH55hlDMIzJYKxtIqIOYCmzEvZBp+FqRLioxleUloViJvGCVzu/3iC3wt8MYFtiag4jMCtlzlciSxhj1QyyPljCSizZTqxBB0B81diJgMk+IjieG6uCts74gDKOnYt500J9qC0cPJhgsSlpUlbmSFxcRRAdS7/QC3bSvKICVlwZBw8V5BGhP3kn5ba2/3qT7K+FT/D5nadgeW5zCO+rHfsDalHqXGCMRpgPxyEyiLQ3TfMDoBv8AOgq8VnjxeJVjI8S2CSLoHTUllFttFJJ8CmeGjw8gjAnmvNK7BwSpyIuVc2b8IUAX+dR8NwuIiiLphouYwuJC135k5Fs4/tS1yfemM+IaOSWXE4ZQkUJQSqb3FhcW0tmJ8CgR+qsbIHkUSZ4pQsMeVgdAt2YW9r3+eteuFcOLKCxyRiwzEeBsgG5+VQ+neDrIwmRGysAyRE9Kk/ExPaO9h5a1dC4PwwJ1vZntobWAHhR2AoF/DuFG3QpiQ7sf6rj5/gHsKd8PwiRiyKB5Pc/M7mpSda9pVR7oLWoFebXNB8oIr7PKkYzMQBS6Xi91zRoSPLaftQXShqORLUobi8p2Cj6f71EeKTX3/YUDlDXzmZXB8fxS3C8YznrUA+V7/Q1fQZrMNRQNla4uK9VU4e91y91Nv9qt1AVheOYV2mknUKyHKwKSusmi5ejKtjmB7nuK1XH8ZycPJKLXVTa/5jov7kVhMfxELg5FEgjjkHLRibNEznqTybrmK0CAvLJKGESR55AW5jXk0Ba9wLk2YD2INXcHHK0BMmH5rGZmyXCkANdSLixPbU96o8NSEzxffSM7NMQG3N7qCCBZQAptTDDxp9mIXFuuaYC8zanI/UF77a0V7xy4ZpZUeF0keWKMMl1JY5S3VsCvcd7VenS+Ilkw+IRmSERop1yFdDmHz3IHepYPtBmj/pzoZ2YO3S0QW46QNyLnq9q+cWxUcckjwqufZ5bABV8afE/t5NB49N4cviUDhQ8cKB8osockk/oLfqak4zjlkeR3DZAskRUDLJAuaxlyMBnQgDqF9zVXgJX7Lip3UMHDDK2uYWyjN7efrVTij3ZULiUcuJYur7uZE6nCyXIDs/4TuEAoPrSh5AkzgF3EDBVLxSsUujZW1jZNL9he3fRvE/I1JjlwMWinpLiVd2/vJa/mqvDGeEGGVJAuJLZHAX7vMSWZ7X6ySRcHQIKtjLAuYNE/D4hlK9JPMU9r2zMW99+1BDjMSMJC3EFZwZyAsL2I5jbdxsNT7Cs7wmOGR5MRJizHnblhkUDLcZpSLiwFha42qYxy4jFS4mKNWRBmWP4pA7KAovsPPi16cyDErGY/ssTGNBCjAg3kkK52yWsFAuTe1gKA4RDDLPFkxMru+fEEoxCsAwWMODrcKAPoTU6Ydkjkw5dZpZpCWuLohbbN5sBfKPFe+J4yKNnaJQCyqGK6F1UWUAj4IR2y2Lb6DU/fQyNLI+IfRV6Y1Asq33ygd/feg0/DcAkSBF1sACTuSO5/27VeG1eUFemqoiBqVajQV7nnSMXY6nYdz8hQSZfNKcdxkX5cAzN+b8I+XmqmMmkxEjRglI1tmA3JOtifl296vYPBpGt6IqjCNIwDkk7m9XOJIAgUCp8Iv4vNV+JNsKCKPDC21fPsos22xqeM6V7X4X/yn+KoRy4TuKqR4iVLhHYe3/zTofCPlVOWHq+dBb9OY5nIZzcsLbW22v8AuK0dc5w2KdC7IdAx07fFW24HjebHmPxDQ/8AP+bVFJv+orf4dUGpLhiP7V3PyBK/rWGxDv8Ad5YUlBck5tl5cZawvoGJI1NdC9R4cyMMpGePVb7EkaqfYiw/Sue8bSISSK08kWWFvuj8KNISuttWJ0+lqirHBucrRLyVGWBmsDpmz6IH/n51ZwwtBGsuEQKZ1AXR9GJLMLa3vp9PeqvDOSJomTESWEIYdX3eULlN77a62q5w2OQQYdIcWlg8hYABuZlDOFDE3Fh/NBZw+JSPD2XPHGxLkNpIxbXJ/bYWze5tveslxTGNKw0CqNkGw/8Af3OtXsVOWXMT2tr/AM3vr9ao8MwpZuYwst9Pcjc/L/Witp6cPLSJRsyMp/zqb6/MH9qQwGJ5RnZYoGmkLBXChAoshYX6CxzPoBcstWsPi8qOvdSso+hs3/6mrmMaETGCeGMxylAXKsTJKVvDFoL3AzOSDoLa0R9heWEciRH5MqZRIjBlw0CgqhY5d2HUTfv3tWT4tj45XXDRrL9kViyowIGSMayZR1G516vN9K98a4q0kcuGhnzqrkM2oEstgAqlifuk2UD8t6vcJwWKi5pjEchSEIgGsodwLH5X1uTbSgscAwuFk5AjaUGWSWbfJpGABm7ZBoND3NW58VyITErmVpGaR3tbmFjuBuIgNNfit4vUvHeIBAi2RpRGqM4AIOXcDtkDX9mb2WlODwzySAm7M36n50EOKLFRcks537m9dH9OYLlYeOMDYXPzO9ZPhnD1bEKCc7LuR8K2/Cvk+TsK3ajSiJBXoC9V3mUG25OwG9QYlHcWLZR+Vf8AVv8AQVURY/jUcbcqOzyd7bL8z59qhwUZs2ImNyATr2AFIPTGFviHuPhLfzan/qVrQctd5GWMf/kwv+16CfgiWhV2+KS8jfNjf+LD6VI7F2t2FSSaAKNgLfpRCtUTrS7Gtc0xY2FLpRc0EqHSvR0Rz/af4qNDXvGG0L+4t+4oKinpHyqti31A9969g6CqHFZLRtbft8+1AkGKK3UAG5Ja/YEmwHvtWq9BvcSfT+TWBkxAZgiaqDv+du7H28f+9br0AmkjdukfXX/n1qVTOf8AqP8A5qzHHMMnNxTZVJMUYJIBvYt5r7RUH2LBxmdGyLfltHtpkv8ADba2tUeO8OiVIlSNVGTENZdNeWNdKKKKTQIGMakXBtcedaYogsxtrzWX5KoXKB4A9qKKKq8P1nRTqCsgI89Br1gOJSycNVpHLmyC7AE2Z3DakXuQAL72FFFAi4ZwyJ0RXQEGQ31OuoG971quG/drjWQlTz44rgm4SwGUeNO41oooFR1ke+uVio9gLAD6U+jXLEltOY2Vj3K22vuB8qKKBzwOMLi2QCyqoAHYU041MyqxU2sK+UVXKXBoAikbtYknUn6nWvc1FFEZ/wBL/wBef5n/AMjTHies+HH9xP1Eba0UVRbbepoaKKK9'
                   'S7Urm3oooiTCVPxf+if8y/zRRQK+1IvVzkQOQbdv1tRRQZjhm/0rqPopQMKCO7G/7D/SiiuVf//Z'),

             ),
           ],
         ),
         Divider(color: Colors.grey[300],),
         Row(
           mainAxisAlignment: MainAxisAlignment.end,
           children: [


             Text('عائشة الحكيم',style: TextStyle(
                 fontWeight: FontWeight.w500,
                 fontSize: 20
             ),),
             SizedBox(width: 10,),
             CircleAvatar(
               backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5hX7fjETHYDIUX_"
                   "9dhNVqYHTSoq2ciY2YQCrlaiwkZoDWcxa6Mr_cIVQc6vywBpGkMK0&usqp=CAU"),

             ),
           ],
         ),
         Divider(color: Colors.grey[300],),
       ],
  ),
    bottomNavigationBar: BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.auto_awesome_mosaic,color: Colors.grey,),
          label: 'Tabs',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.email,color: Colors.grey),
          label: 'Email',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.emoji_emotions,color: Colors.grey),
          label: 'Emoji',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings,color: Colors.grey),
          label: 'Settings',
        ),
      ],
      selectedItemColor: Colors.black,

    ),

  );
  }

}
