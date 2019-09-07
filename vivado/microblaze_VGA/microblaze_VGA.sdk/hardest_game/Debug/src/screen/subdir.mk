################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/screen/font.c \
../src/screen/screen.c \
../src/screen/screen_builders.c 

OBJS += \
./src/screen/font.o \
./src/screen/screen.o \
./src/screen/screen_builders.o 

C_DEPS += \
./src/screen/font.d \
./src/screen/screen.d \
./src/screen/screen_builders.d 


# Each subdirectory must supply rules for building sources it contributes
src/screen/%.o: ../src/screen/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MicroBlaze gcc compiler'
	mb-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../hardest_game_bsp/microblaze_0/include -mlittle-endian -mcpu=v11.0 -mxl-soft-mul -Wl,--no-relax -ffunction-sections -fdata-sections -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


