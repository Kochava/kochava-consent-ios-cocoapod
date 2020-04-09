//
//  ViewController.swift
//  KochavaConsentiOS
//
//  Created by John Bushnell on 01/15/2020.
//  Copyright (c) 2020 Kochava. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    
    
    @IBAction func presentConsentDialog_didTouchUpInside(_ sender: Any)
    {
        // KVAConsentClient
        // ⓘ Configure to appear like you're in a CCPA mode even if you're not really, just to consistently show the dialog.
        KVAConsentClient.shared.configure(with: [
            "modes":
            [
                "ccpa",
                "gdpr"
            ],
            "host":
            [
                "ccpa":
                [
                    "privacy_policy_url": "https://www.kochava.com/support-privacy/",
                    "privacy_policy_text": "Privacy Policy",
                    "access_data_url": "https://www.kochava.com/support-privacy/",
                    "access_data_text": "Access Data",
                    "delete_data_url": "https://www.kochava.com/support-privacy/",
                    "delete_data_text": "Delete Data",
                    "_image_url": "https://storage.googleapis.com/kochava-web/2016/07/Kochava-horizontal-black-800x154.png",
                    "image_url": "https://storage.googleapis.com/kochava-sdk-assets/images/ccpa_fake_logo.jpg",
                    "image_text": "Main Header Image",
                    "dialog_header_text": "We value your privacy",
                    "dialog_body_text": "We and our partners use technologies, such as cookies, and process personal data, such as IP addresses and cookie identifiers, to personalize ads and content based on your interests, measure the performance of ads and content, and derive insights about the audiences who saw ads and content.  Tap below to consent to the use of this techology and the processing of your personal data for these purposes.  You can change your mind and change these consent choices at any time by returning to this setting.",
                    "opt_out_text": "Opt out of sale of data",
                    "opt_out_detail_text": "Note: This will make it harder to customize your experience.",
                    "opt_out_default": false,
                    "confirm_text": "Confirm"
                ]
            ]
        ], context: .host)
        
        let didCompleteBlock: KVAConsentDialogNavigationControllerDidCompleteBlock =
        {
            (consentDialogNavigationController) in
            
            consentDialogNavigationController.dismiss(animated: true)
        }

        // didRequestToOpenURLBlock
        let didRequestToOpenURLBlock: KVAConsentDialogNavigationControllerDidRequestToOpenURLBlock =
        {
            (consentDialogNavigationController, url) in

            print("didRequestToOpenURLBlock called")
        }

        guard let consentDialogNavigationController = KVAConsentDialogNavigationController(didRequestToOpenURLBlock: didRequestToOpenURLBlock, didCompleteBlock: didCompleteBlock) else
        {
            return
        }

        print("!!!! will show")
        self.show(consentDialogNavigationController, sender: self)
    }
    
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
}



