/// @description get_total_books()
//returns the number of books that have been unlocked

var ii = 0;
var ret = 0;
repeat(array_length_1d(global.book_text))
{
if (book_unlocked[ii])
{
ret +=1;
}
ii+=1;
}
return ret;
