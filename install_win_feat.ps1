Configuration MyDscConfiguration {
  
  param (
      [Parameter()]
      [string] $Windowsfeature_Ensure,
      [string] $Windowsfeatures

  )
    Node "localhost" {
      WindowsFeature MyFeatureInstance {
        Ensure = $Windowsfeature_Ensure
        Name = $Windowsfeatures
      }
    }
  }
  
  
  
