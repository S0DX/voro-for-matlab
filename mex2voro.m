function [y] = mex2voro(L, Matrix_P, Matrix_W)
disp('mex2voro����')

l = size(Matrix_P);
id = 1:1:l(2);

if min(size(Matrix_P)) < 3
    disp('ƽ���ϣ�����ȫ�����')
    padding = zeros(1,l(2));
    Particle= [id', Matrix_P',padding', Matrix_W']';
else
    Particle= [id', Matrix_P', Matrix_W']';
end
disp('��ʼ����voro++')
mex test3dvoro.cpp src/voro++.cc

ZONE = [0 L 0 L 0 L]';
test3dvoro(ZONE, Particle,'%s %r % c');

disp('�������')
disp('����ѱ���');
disp('�������ӣ�����&Ȩ�أ������� particles.txt');
disp('voro_����cellʹ���涥��������Լ���Ķ�Ӧ�� cell.txt');
end