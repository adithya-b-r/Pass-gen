# Random Password Generator

This bash script generates random passwords with a specified length. The script uses a combination of lowercase letters, uppercase letters, numbers, and special characters to create diverse and secure passwords.

## Usage

Run the script with the desired password length as an argument:

```bash
./random_password_generator.sh <length>
```

Replace `<length>` with the desired length of the password.

## Script Explanation

- The script defines arrays for lowercase letters, uppercase letters, numbers, and special characters.
- It then combines these arrays into a single array called `comb`.
- The `randomA` and `randomNS` functions generate random indices for the lowercase, uppercase, numbers, and special characters arrays.
- The `comb` function randomly selects one of the character types (lowercase, uppercase, numbers, or special characters) and assigns a random character from that type to the password.
- The `main` function runs a loop to generate the password based on the specified length.
- The generated password is displayed on the console.

## Example

```bash
./random_password_generator.sh 12
```

This will generate and display a random password with a length of 12 characters.

Feel free to modify and adapt the script according to your specific requirements!
