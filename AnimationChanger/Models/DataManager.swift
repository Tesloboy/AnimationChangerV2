import Spring

class DataManager {
    static var shared = DataManager()
    
    let animations: [Spring.AnimationPreset] = [
        .fadeIn,
        .fadeInDown,
        .fadeInLeft,
        .fadeInRight,.fadeInUp,
        .fadeOut,
        .fadeOutIn,
        .flash,
        .flipX,
        .flipY,
        .morph,
        .pop,.shake,
        .slideDown,
        .slideLeft,
        .slideRight,
        .slideUp,
        .squeeze,
        .squeezeDown,
        .squeezeLeft,
        .squeezeRight,
        .squeezeUp,
        .swing,
        .wobble,
        .zoomIn,
        .zoomOut
    ]
    
    let curves = Spring.AnimationCurve.allCases
}

