import Spring

class ViewController: UIViewController {

    @IBOutlet var springView: SpringView!
    @IBOutlet var animationNameLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var daturationLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    @IBOutlet var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nextButton.titleLabel?.text = "Try Animation"
    }

    
    @IBAction func nextAnimationButtonPressed(_ sender: SpringButton) {
        
    }
    
}

