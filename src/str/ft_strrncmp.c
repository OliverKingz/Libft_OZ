/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strrncmp.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ozamora- <ozamora-@student.42madrid.com    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/01/18 16:54:45 by ozamora-          #+#    #+#             */
/*   Updated: 2025/01/18 17:09:19 by ozamora-         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

/**
 * @brief Compares two strings from the end, up to n-characters.
 * @param s1 The first string.
 * @param s2 The second string.
 * @param n The maximum number of characters to compare.
 * @return 
 * - A negative integer if 's1' is less than 's2'.
 * 
 * - Zero if 's1' is equal to 's2'.
 * 
 * - A positive integer if 's1' is greater than 's2'.
 * @note The comparison starts at the end of the strings and proceeds backwards.
 */
int	ft_strrncmp(const char *s1, const char *s2, size_t n)
{
	size_t	len1;
	size_t	len2;
	size_t	i;

	len1 = strlen(s1);
	len2 = strlen(s2);
	if (n == 0)
		return (0);
	i = 0;
	while (i < n && len1 > 0 && len2 > 0)
	{
		if ((unsigned char)s1[len1 - 1] != (unsigned char)s2[len2 - 1])
			return ((unsigned char)s1[len1 - 1] - (unsigned char)s2[len2 - 1]);
		len1--;
		len2--;
		i++;
	}
	if (i < n)
	{
		if (len1 == 0 && len2 > 0)
			return (0 - (unsigned char)s2[len2 - 1]);
		if (len2 == 0 && len1 > 0)
			return ((unsigned char)s1[len1 - 1] - 0);
	}
	return (0);
}
