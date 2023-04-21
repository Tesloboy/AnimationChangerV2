/*
 1. Составить Энам с перечислением всех анимаций
 2. Составить свич в перечисляющий сценарии
 3. Каждый сценарий содержит:
   - анимацию
   - force
   - daturation
   - delay
 
 */
import Spring

class ViewController: UIViewController {

    enum CurrentAnimation {
//        case shake, pop, morph, squeeze, wobble, swing,
        case shake
        case pop
        case morph
        case squeeze
        case wobble
        case swing
    }
    
    private var currentAnimation = CurrentAnimation.shake
//    var durationInformation = String(springView.duration) ???
    
    @IBOutlet var springView: SpringView!
    @IBOutlet var animationNameLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nextButton.titleLabel?.text = "Try Animation"
    }

    
    @IBAction func nextAnimationButtonPressed(_ sender: SpringButton) {
        sender.pulsate()
        
        switch currentAnimation {
            
        case .shake:
            //labels
            animationNameLabel.text = "\(currentAnimation)"
            forceLabel.text = "force: \(springView.force)"
            durationLabel.text = "duration: \(springView.duration)"
            curveLabel.text = "curve: \(springView.curve)"
            //опции анимации
            springView.animation = Spring.AnimationPreset.shake.rawValue
            springView.curve = Spring.AnimationCurve.easeIn.rawValue
            
            springView.force = 0.9
            springView.duration = 0.7
            springView.animate()
            //переименовывание следующей кнопки
            nextButton.setTitle("pop", for: .normal)
            //следующая анимация
            currentAnimation = .pop
            
        case .pop:
            animationNameLabel.text = "\(currentAnimation)"
            forceLabel.text = "force: \(springView.force)"
            durationLabel.text = "duration: \(springView.duration)"
            curveLabel.text = "curve: \(springView.curve)"
            //опции анимации
            springView.animation = Spring.AnimationPreset.pop.rawValue
            springView.curve = Spring.AnimationCurve.easeOut.rawValue
            springView.force = 0.6
            springView.duration = 0.5
            springView.animate()
            //переименовывание следующей кнопки
            nextButton.setTitle("morph", for: .normal)
            //следующая анимация
            currentAnimation = .morph
            
        case .morph:
            animationNameLabel.text = "\(currentAnimation)"
            forceLabel.text = "force: \(springView.force)"
            durationLabel.text = "duration: \(springView.duration)"
            curveLabel.text = "curve: \(springView.curve)"
            //опции анимации
            springView.animation = Spring.AnimationPreset.morph.rawValue
            springView.curve = Spring.AnimationCurve.spring.rawValue
            springView.force = 0.9
            springView.duration = 0.7
            springView.animate()
            //переименовывание следующей кнопки
            nextButton.setTitle("squeeze", for: .normal)
            //следующая анимация
            currentAnimation = .squeeze
            
        case .squeeze:
            animationNameLabel.text = "\(currentAnimation)"
            forceLabel.text = "force: \(springView.force)"
            durationLabel.text = "duration: \(springView.duration)"
            curveLabel.text = "curve: \(springView.curve)"
            //опции анимации
            springView.animation = Spring.AnimationPreset.squeeze.rawValue
            springView.curve = Spring.AnimationCurve.linear.rawValue
            springView.force = 0.6
            springView.duration = 0.5
            springView.animate()
            //переименовывание следующей кнопки
            nextButton.setTitle("wobble", for: .normal)
            //следующая анимация
            currentAnimation = .wobble
            
        case .wobble:
            animationNameLabel.text = "\(currentAnimation)"
            forceLabel.text = "force: \(springView.force)"
            durationLabel.text = "duration: \(springView.duration)"
            curveLabel.text = "curve: \(springView.curve)"
            //опции анимации
            springView.animation = Spring.AnimationPreset.wobble.rawValue
            springView.curve = Spring.AnimationCurve.easeIn.rawValue
            springView.force = 0.9
            springView.duration = 0.7
            springView.animate()
            //переименовывание следующей кнопки
            nextButton.setTitle("swing", for: .normal)
            //следующая анимация
            currentAnimation = .swing
            
        case .swing:
            animationNameLabel.text = "\(currentAnimation)"
            forceLabel.text = "force: \(springView.force)"
            durationLabel.text = "duration: \(springView.duration)"
            curveLabel.text = "curve: \(springView.curve)"
            //опции анимации
            springView.animation = Spring.AnimationPreset.swing.rawValue
            springView.curve = Spring.AnimationCurve.spring.rawValue
            springView.force = 0.6
            springView.duration = 0.5
            springView.animate()
            //переименовывание следующей кнопки
            nextButton.setTitle("shake", for: .normal)
            //следующая анимация
            currentAnimation = .shake
            
        }
        
    }
    
}

