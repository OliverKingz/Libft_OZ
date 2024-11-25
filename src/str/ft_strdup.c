/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strdup.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ozamora- <ozamora-@student.42madrid.com    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/09/24 18:18:34 by ozamora-          #+#    #+#             */
/*   Updated: 2024/11/22 15:23:12 by ozamora-         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

/**
 * ft_strdup - Duplicates a string by allocating memory for it first.
 * 
 * @s: The string to duplicate.
 * 
 * Return: Pointer to the newly allocated duplicate string, or NULL 
 *         if memory allocation fails.
 * 
 * Edge cases checked:
 * - Does not handle NULL input, to replicate the origina function.
 */
char	*ft_strdup(const char *s)
{
	char	*dup;
	size_t	s_len;

	s_len = ft_strlen(s);
	dup = (char *)malloc((s_len + 1) * sizeof(char));
	if (!dup)
		return (NULL);
	ft_strlcpy(dup, s, s_len + 1);
	return (dup);
}
