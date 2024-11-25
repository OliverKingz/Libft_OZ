/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_tolower.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ozamora- <ozamora-@student.42madrid.com    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/09/20 11:27:50 by ozamora-          #+#    #+#             */
/*   Updated: 2024/11/24 16:34:16 by ozamora-         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

/**
 * ft_tolower - Converts a character to lowercase.
 * 
 * @c: The character to convert.
 * 
 * Return: The lowercase equivalent of 'c' if it is an uppercase letter; 
 *         otherwise, returns 'c'.
 */
int	ft_tolower(int c)
{
	if (ft_isupper(c))
		return (c + ' ');
	else
		return (c);
}
