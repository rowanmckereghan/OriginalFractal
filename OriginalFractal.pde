int lim = 5;
//float x, y, z;
public void setup()
{
	size(800, 800);//, P3D);
	//x = width/2;
 	//y = height/2;
  	//z = 0;
	frameRate(60);
}
public void draw()
{
	//translate(0, 0, z);
	fractal(10, 800 - 10, 800);
	//lim += 5;
	/*if (lim >= 25)
	{
		lim = 12;
	}*/
}
public void mouseDragged()//optional
{

}
public void fractal(int x, int y, int len) 
{
	fill(x/5, 65, y/8);
	//len = len + 5;
	ellipse(x, y, len, len);
	if (len < 24) //+ lim)
	{
		/*for(int i = 0; i < 10000; i++)
		{
			z++;
			if (z >= len)
			{
				len = len /2;
				break;
			}
		}*/
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
