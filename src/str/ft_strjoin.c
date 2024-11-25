/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strjoin.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ozamora- <ozamora-@student.42madrid.com    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/09/25 14:54:05 by ozamora-          #+#    #+#             */
/*   Updated: 2024/11/22 15:23:20 by ozamora-         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

/**
 * ft_strjoin - Allocates (with malloc) and returns a new string,
 *              which is the result of the concatenation of 's1' and 's2'.
 *
 * @s1: The first string. If NULL, treated as an empty string.
 * @s2: The string to add to 's1'. If NULL, treated as an empty string.
 *
 * Return: The newly allocated string resulting from the concatenation
 *         of 's1' and 's2'. Returns NULL if the memory allocation fails.
 *
 * Note: Uses malloc, so the caller is responsible for freeing the memory
 * allocated for the resulting string when it is no longer needed.
 */
char	*ft_strjoin(char const *s1, char const *s2)
{
	char	*joined;
	int		s1_len;
	int		s2_len;
	int		i;

	s1_len = ft_strlen(s1);
	s2_len = ft_strlen(s2);
	joined = (char *)malloc((s1_len + s2_len + 1) * sizeof(char));
	if (!joined)
		return (NULL);
	i = 0;
	while (i < s1_len)
	{
		joined[i] = s1[i];
		i++;
	}
	i = 0;
	while (i < s2_len)
	{
		joined[s1_len + i] = s2[i];
		i++;
	}
	joined[s1_len + s2_len] = '\0';
	return (joined);
}
