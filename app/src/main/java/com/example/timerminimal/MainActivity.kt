private fun startTimer() {
    if (!timerRunning) {
        countDownTimer = object : CountDownTimer(timeLeftInMillis, 1000) {
            override fun onTick(millisUntilFinished: Long) {
                timeLeftInMillis = millisUntilFinished
                updateTimerText()
            }

            override fun onFinish() {
                timerRunning = false
                startButton.isEnabled = true
            }
        }.start()
        timerRunning = true
        startButton.isEnabled = false
    }
}

private fun pauseTimer() {
    countDownTimer?.cancel()
    timerRunning = false
    startButton.isEnabled = true
}

private fun resetTimer() {
    countDownTimer?.cancel()
    timeLeftInMillis = 60000
    updateTimerText()
    timerRunning = false
    startButton.isEnabled = true
}
