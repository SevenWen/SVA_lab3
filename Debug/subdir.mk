################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../add_word.c \
../dump_word.c \
../exploit.c \
../finalize.c \
../get_word.c \
../initialize.c \
../main.c 

OBJS += \
./add_word.o \
./dump_word.o \
./exploit.o \
./finalize.o \
./get_word.o \
./initialize.o \
./main.o 

C_DEPS += \
./add_word.d \
./dump_word.d \
./exploit.d \
./finalize.d \
./get_word.d \
./initialize.d \
./main.d 


# Each subdirectory must supply rules for building sources it contributes
%.o: ../%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -m32 -fno-stack-protector -Wno-format-security -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


