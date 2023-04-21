import UIKit

extension UIButton {
    func pulsate() {
        //в качестве кейпаса зададим что именно мы будем трансформировать
        let pulse = CASpringAnimation(keyPath: "transform.scale")
        //зададим параметры нашей анимации(откуда до куда будем анимировать)
        //добавим уменьшение нашей кнопки от исходного значения
        pulse.fromValue = 0.95
        //а затем увеличим обратно к исходному
        pulse.toValue = 1
        //выставим временной интервал для анимации в секундах
        pulse.duration = 0.3
        //добавим реверс, чтобы анимация шла туда и обратно
        pulse.autoreverses = true
        //зададим количество повторений для анимации
        pulse.repeatCount = 1
        //увеличение изначальной скорости анимации
        pulse.initialVelocity = 0.4
        //затухание анимации
        pulse.damping = 0.8
        
        layer.add(pulse, forKey: nil)
    }
}
