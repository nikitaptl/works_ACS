.macro create(%start, %lb, %num)
	push(s0)
	push(s1)
	push(s2)
	push(s3)
	push(s4)
	push(s5)
	push(s6)
	push(s7)
	push(s8)
	
	mv t0 %start # �������� �� �����
	mv t1 %lb # ������ ���������
	mv t2 %num # �����
	
	mv s0 t0 # ����� ������ 1 ������
	add s1 s0 %lb # ����� ����� 1 ������ (������ 2-��)
	add s2 s0 %num # ����� ����� 2 ������
	
	mv a0 t1
	allocate_reg(a0)
	mv s3 a0 # ����� ������ ����� ������ 1
	mv s7 s3 # �����
	li s4 0 # ���������� ��������� � ���� ������ 
	
	sub a0 t2 t1
	allocate_reg(a0)
	mv s5 a0 # ����� ������ ����� ������ 2
	mv s8 s5 # �����
	li s6 0 # ���������� ��������� � ���� ������
	
	mv t0 s0 # ������ ������ 1
	blt t0 s1 loop1
	j find_second
	
	loop1:
		lb t1 (t0) # ������� ������ 1
		
		mv t2 s1 
		check_uniqueness:
			lb t3 (t2) # ������� ������ 2
			beq t1 t3 next # ���� ��� �����, �� ������� �� �������� � ��������� �� ��������� ��������
			
			addi t2 t2 1 # ��������� �� ��������� ������
			blt t2 s2 check_uniqueness
		j unique
		
		unique:
			sb t1 (s7) # ��������� ������� � ����� ������ 
			addi s7 s7 1
			addi s4 s4 1
			j next
			
		next:
			addi t0 t0 1 # ��������� �� ��������� ������� 
			blt t0 s1 loop1
			j find_second
			
	
	find_second:	
	mv t0 s1
	blt t0 s2 loop2
	j end
	
	loop2:
		lb t1 (t0) # ������� ������ 2
		
		mv t2 s0 # ������ ������ 1
		check_uniqueness2:
			lb t3 (t2) # ������� ������ 1
			beq t1 t3 next2 # ���� ��� �����, �� ��������� �� ��������� ��������
			
			addi t2 t2 1 # ��������� �������
			blt t2 s1 check_uniqueness2
		j unique2
		
		unique2:
			sb t1 (s8)
			addi s8 s8 1
			addi s6 s6 1
			j next2
			
		next2:
			addi t0 t0 1
			blt t0 s2 loop2
			j end
			
	end:
		mv a0 s3
		mv a1 s4
		mv a2 s5
		mv a3 s6
		
		pop(s8)
		pop(s7)
		pop(s6)
		pop(s5)
		pop(s4)
		pop(s3)
		pop(s2)
		pop(s1)
		pop(s0)
	
.end_macro