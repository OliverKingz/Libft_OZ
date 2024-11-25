/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strchr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ozamora- <ozamora-@student.42madrid.com    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/09/20 16:37:51 by ozamora-          #+#    #+#             */
/*   Updated: 2024/11/22 15:23:10 by ozamora-         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

/**
 * ft_strchr - Locates the first occurrence of a character in a string.
 * 
 * @s: The string to be searched.
 * @c: The character to locate in the string.
 * 
 * Return: A pointer to the first occurrence of the character 'c' in the 
 *         string 's', or NULL if the character is not found.
 * 
 * Edge cases checked:
 * - Handles NULL string input.
 */
char	*ft_strchr(const char *s, int c)
{
	if (!s)
		return (NULL);
	while (1)
	{
		if (*s == (char)c)
			return ((char *)s);
		if (*s == '\0')
			break ;
		s++;
	}
	return (NULL);
}
