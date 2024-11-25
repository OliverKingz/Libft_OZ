/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strncmp.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ozamora- <ozamora-@student.42madrid.com    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/09/20 16:38:21 by ozamora-          #+#    #+#             */
/*   Updated: 2024/11/22 15:23:38 by ozamora-         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

/**
 * ft_strncmp - Compares two strings up to a specified number of characters.
 * 
 * @s1: The first string.
 * @s2: The second string.
 * @n: The maximum number of characters to compare.
 * 
 * Return: Integer less than, equal to, or greater than zero if 
 *         's1' is found, respectively, to be less than, to match, 
 *         or be greater than 's2'.
 * 
 * Edge cases checked:
 * - Stops comparing at 0 or when reaching the limit 'n'.
 */
int	ft_strncmp(const char *s1, const char *s2, size_t n)
{
	size_t	i;

	i = 0;
	while (s1[i] != '\0' && s2[i] != '\0' && i < n)
	{
		if ((unsigned char)s1[i] != (unsigned char)s2[i])
			return ((unsigned char)s1[i] - (unsigned char)s2[i]);
		i++;
	}
	if (i < n)
	{
		if ((unsigned char)s1[i] != (unsigned char)s2[i])
			return ((unsigned char)s1[i] - (unsigned char)s2[i]);
	}
	return (0);
}

/*
#include <stdio.h>
int main(void)
{
	char	str[] = "Hello World!";
	char	str_equal[] = "Hello World!";
	char	str_lesser[] = "Hello asdawds";
	char	str_greater[] = "Hello WORLD!!!!!!!!!!!!!!!!";
	int		result;
	unsigned int	n;

	printf("Testing my version of strncmp, that returns:"
	"\n -n if lesser\n  0 if equal \n +n if greater \n\n");
	printf("str =       	%s\n", str);
	printf("str_equal =     %s\n", str_equal);
	printf("str_lesser =    %s\n", str_lesser);
	printf("str_greater =   %s\n\n", str_greater);
	result = ft_strncmp(str, str_equal, sizeof(str) - 1);
	printf("strcmp(str, str_equal, sizeof(str) - 1) =     %d\n", result);
	result = ft_strncmp(str, str_lesser, sizeof(str) - 1);
	printf("strcmp(str, str_lesser, sizeof(str) - 1) =   %d\n", result);
	result = ft_strncmp(str, str_greater, sizeof(str) - 1);
	printf("strcmp(str, str_greater, sizeof(str) - 1) =   %d\n", result);
	
	printf("\nTesting differents n for strncmp:\n");
	n = 0;
	result = ft_strncmp(str, str_equal, n);
	printf("strcmp(str, str_equal, %d) =     %d\n", n, result);
	n = 5;
	result = ft_strncmp(str, str_lesser, n);
	printf("strcmp(str, str_lesser, %d) =   %d\n", n, result);
	n = 50;
	result = ft_strncmp(str, str_greater, n);
	printf("strcmp(str, str_greater, %d) =   %d\n", n, result);
	return (0);
}*/
