/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_substr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ozamora- <ozamora-@student.42madrid.com    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/09/25 12:47:21 by ozamora-          #+#    #+#             */
/*   Updated: 2024/11/22 15:24:08 by ozamora-         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

/**
 * ft_substr - Creates a substring from a string.
 * 
 * @s: The string to create a substring from.
 * @start: The index of the character in 's' to start from.
 * @len: The maximum length of the substring.
 * 
 * Return: The resulting substring, or NULL if memory allocation fails.
 * 
 * Notes:
 * - If 'start' is beyond the length of 's', an empty string is returned.
 * - The function adjusts 'len' to ensure it does not exceed the length of 's' 
 *   starting from 'start'.
 * - Handles NULL input by returning NULL.
 */
char	*ft_substr(char const *s, unsigned int start, size_t len)
{
	char	*subs;
	size_t	s_len;
	size_t	i;

	if (!s)
		return (NULL);
	s_len = ft_strlen(s);
	if (start >= s_len)
		len = 0;
	else if (len > s_len - start)
		len = s_len - start;
	subs = (char *) malloc((len + 1) * sizeof(char));
	if (!subs)
		return (NULL);
	i = 0;
	if (start < s_len)
	{
		while (s[start + i] != '\0' && i < len)
		{
			subs[i] = s[start + i];
			i++;
		}
	}
	subs[i] = '\0';
	return (subs);
}
