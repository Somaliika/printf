/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_isalpha.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ilian <marvin@42.fr>                       +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/11/04 17:57:04 by ilian             #+#    #+#             */
/*   Updated: 2018/11/10 20:43:05 by ilian            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

int		ft_isallequal(char *str, int c)
{
	if (!str || c == 0)
		return (0);
	while (*str)
	{
		if (*str != c)
			return (0);
		str++;
	}
	return (1);
}