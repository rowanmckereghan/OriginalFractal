public void setup()
{
	size(800, 800);
}
public void draw()
{
	fractal(10, 790, 800);
}
public void mouseDragged()//optional
{

}
public void fractal(int x, int y, int len) 
{
	fill(x/5, 65, y/8);
	ellipse(x, y, len, len);
	if (len < 12)
	{

	}
	else
	{
		fractal(x, y, len/2);
		fractal(x + len/2, y, len/2);
		fractal(x, y - len/2, len/2);
		fractal(x + len/2, y - len/2, len/2);
		//fractal(x - len/2, y, len/2);
		//fractal(x - len/2, y + len/2, len/2);
	}
}
