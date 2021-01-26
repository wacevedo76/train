"""
    This function will return a list of calculated fibinocci numbers up to, 
    but not including the target number
"""

def fibinocci(target_num):
    # set first two numbes in fibinocci sequence
    first_num = 0
    second_num = 1

    # initialize return list
    result = []

    result.append(first_num)

    def calculate_fibinocci(first_num, second_num, target_num):
        # use base case for conditional
        if second_num <= target_num:
            result.append(second_num)
            temp_num = first_num + second_num
            first_num = second_num
            second_num = temp_num
            calculate_fibinocci(first_num, second_num, target_num)

        return result

    return calculate_fibinocci(first_num, second_num, target_num)
