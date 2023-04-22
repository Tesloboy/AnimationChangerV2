

import Spring

class ViewController: UIViewController {
    
    @IBOutlet var animationView: SpringView!
    @IBOutlet var animationLabel: UILabel!
    
    private var animation = Animation.getAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func animationButtonPressed(_ sender: SpringButton) {
        sender.pulsate()
        
        animationLabel.text = animation.description
        animationView.animation = animation.name
        animationView.force = CGFloat(animation.force)
        animationView.duration = CGFloat(animation.duration)
        animationView.delay = CGFloat(animation.delay)
        animationView.curve = animation.curve
        animationView.animate()
        
        animation = Animation.getAnimation()
        sender.setTitle("Run \(animation.name)", for: .normal)
    }
}
