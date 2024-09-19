# Digital Signal Processing Lab Exercises

This repository contains the MATLAB implementations and documentation for a series of laboratory exercises from the **Digital Signal Processing** (DSP) course. These exercises involve designing and analyzing filters, calculating frequency responses, noise reduction, and various signal processing techniques.

## Table of Contents
- [Project Overview](#project-overview)
- [Lab Exercises](#lab-exercises)
  - [Lab 1: Signal Sampling and Reconstruction](#lab-1-signal-sampling-and-reconstruction)
  - [Lab 2: System Analysis and Convolution](#lab-2-system-analysis-and-convolution)
  - [Lab 3: Noise Filtering Using FIR Filters](#lab-3-noise-filtering-using-fir-filters)
  - [Lab 4: Stochastic Processes and Signal Analysis](#lab-4-stochastic-processes-and-signal-analysis)
- [Installation](#installation)
- [Usage](#usage)
- [Contributors](#contributors)
- [License](#license)

## Project Overview

The goal of this project is to explore various digital signal processing techniques using MATLAB. The exercises cover topics such as signal sampling and reconstruction, filter design, noise reduction, and stochastic signal analysis. Through these exercises, we gain practical understanding of key DSP concepts such as convolution, Fourier transforms, and stochastic process modeling.

## Lab Exercises

### Lab 1: Signal Sampling and Reconstruction
- **Objective**: Investigate the effect of different sampling intervals on signal reconstruction quality.
- **Tasks**:
  - Analyze how the sampling rate impacts signal quality by comparing results for various `Ts` values (e.g., 0.02s, 0.1s).
  - Calculate the Mean Squared Error (MSE) and standard deviation to assess reconstruction quality.
  - Explore how the initial phase of the signal affects reconstruction&#8203;:contentReference[oaicite:0]{index=0}.

**Key MATLAB Functions**:
  - `fft()`: Perform the Fast Fourier Transform (FFT).
  - `conv()`: Compute the convolution between input signals.

### Lab 2: System Analysis and Convolution
- **Objective**: Analyze the behavior of systems based on their impulse responses and frequency responses.
- **Tasks**:
  - Calculate and visualize the frequency response of a system using `freqz()`.
  - Compute the system's output using convolution (`conv()`) and filtering (`filter()`).
  - Compare the results obtained from `conv()` and `filter()` for system output&#8203;:contentReference[oaicite:1]{index=1}.

**Key MATLAB Functions**:
  - `freqz()`: Frequency response of digital filters.
  - `conv()`, `filter()`: Convolution and filtering operations.

### Lab 3: Noise Filtering Using FIR Filters
- **Objective**: Design and implement Finite Impulse Response (FIR) filters for noise reduction.
- **Tasks**:
  - Design FIR filters using different methods such as `fir1()`, `firls()`, and `firpm()`.
  - Apply the filters to noisy signals and compare their effectiveness using MSE values.
  - Investigate the effect of different filter lengths on noise reduction&#8203;:contentReference[oaicite:2]{index=2}&#8203;:contentReference[oaicite:3]{index=3}.

**Key MATLAB Functions**:
  - `fir1()`, `firls()`, `firpm()`: FIR filter design.
  - `filtfilt()`: Apply filters to signals for noise reduction.

### Lab 4: Stochastic Processes and Signal Analysis
- **Objective**: Analyze stochastic signals and explore the statistical properties of random processes.
- **Tasks**:
  - Generate stochastic signals and compute their autocorrelation and power spectral density.
  - Investigate the Law of Large Numbers and its application to stochastic processes.
  - Estimate the autocorrelation function and spectral density of random processes&#8203;:contentReference[oaicite:4]{index=4}.

**Key MATLAB Functions**:
  - `autocorr()`: Autocorrelation calculation.
  - `fftshift()`, `fft()`: Perform and visualize Fourier transforms.

## Installation

1. Clone the repository to your local machine:
   ```bash
   git clone https://github.com/your-username/digital-signal-processing-lab.git
    ```
## Usage

To run the MATLAB scripts for each lab exercise:

- **Lab 1 (Signal Sampling and Reconstruction)**:
    ```matlab
    run('lab1_sampling.m');
    ```

- **Lab 2 (System Analysis and Convolution)**:
    ```matlab
    run('lab2_convolution.m');
    ```

- **Lab 3 (Noise Filtering Using FIR Filters)**:
    ```matlab
    run('lab3_fir_filtering.m');
    ```

- **Lab 4 (Stochastic Processes and Signal Analysis)**:
    ```matlab
    run('lab4_stochastic_processes.m');
    ```
