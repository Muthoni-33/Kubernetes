package com.example;

import java.util.Scanner;

public class HelloApp {

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Enter your name: ");
        String username = scanner.nextLine();

        scanner.close();

        System.out.println("Hello, " + username + "!");
    }
}