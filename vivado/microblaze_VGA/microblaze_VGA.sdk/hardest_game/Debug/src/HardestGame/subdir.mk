################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/HardestGame/config.c \
../src/HardestGame/entity.c \
../src/HardestGame/game.c \
../src/HardestGame/level.c \
../src/HardestGame/map.c \
../src/HardestGame/shape.c 

OBJS += \
./src/HardestGame/config.o \
./src/HardestGame/entity.o \
./src/HardestGame/game.o \
./src/HardestGame/level.o \
./src/HardestGame/map.o \
./src/HardestGame/shape.o 

C_DEPS += \
./src/HardestGame/config.d \
./src/HardestGame/entity.d \
./src/HardestGame/game.d \
./src/HardestGame/level.d \
./src/HardestGame/map.d \
./src/HardestGame/shape.d 


# Each subdirectory must supply rules for building sources it contributes
src/HardestGame/%.o: ../src/HardestGame/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MicroBlaze gcc compiler'
	mb-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../hardest_game_bsp/microblaze_0/include -mlittle-endian -mcpu=v11.0 -mxl-soft-mul -Wl,--no-relax -ffunction-sections -fdata-sections -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


