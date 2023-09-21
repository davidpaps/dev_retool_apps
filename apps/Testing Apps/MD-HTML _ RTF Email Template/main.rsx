<App>
  <Include src="./functions.rsx" />
  <AppStyles id="$appStyles" css="" />
  <Frame
    id="$main"
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    sticky={false}
    type="main"
  >
    <CustomComponent
      id="customComponent1"
      iframeCode={
        "<script>\n  // get component's html\n  let html = \"\"\n  window.Retool.subscribe(function(model) { \n    html = model.html || \"\";\n  })\n\n  // Manually set clipboard on copy event\n  document.addEventListener('copy', function(e) {\n    e.clipboardData.setData('text/plain', html);\n    e.clipboardData.setData('text/html', html);\n    e.preventDefault();\n    console.log(html)\n  });\n</script>\n\n<button onclick=\"document.execCommand('copy')\">Email Friendy RTF Copy</button>"
      }
      model={'{\n  "html": {{text2.value}}\n}'}
    />
    <Text
      id="text2"
      _disclosedFields={{ array: [] }}
      value={
        '<p>Hi <strong>[ACCOUNTANT NAME]</strong>,</p><p><br></p><p>We are currently in the process of computing our GHG emissions, in partnership with Greenly.</p><p><br></p><p>To move forward with the calculations, we need to upload our accounting data for fiscal year <strong>[20XX]</strong> on the Greenly platform by uploading our <strong>FEC</strong> (fichier des écritures comptables).</p><p><br></p><p><strong>What you need to do</strong></p><p><br></p><ul><li>Accept the invite I just sent you by email, sign in to <a rel="noopener noreferrer" href="https://corporate.greenly.earth/app/files-uploader" target="_blank">the Greenly platform</a> and import our FEC.</li><li>To learn how to upload the FEC, <a rel="noopener noreferrer" href="https://greenly.stonly.com/kb/guide/en/upload-my-accounting-data-qdZw5xhThT/Steps/1460465?2ac0f94c_page=3&amp;3caa887c_page=2&amp;5264284a_page=7&amp;70ef0ed6_page=2&amp;98dbe491_page=3&amp;a164dd5d_page=3&amp;c0d8a10d_page=5" target="_blank">here is the link to Greenly\'s guide</a> regarding this part of the flow</li></ul><p><br></p><p><strong>Regarding data security</strong></p><p><br></p><ul><li>The following companies are already working with Greenly and have provided their accounting data: <a rel="noopener noreferrer" href="https://greenly.earth/fr-fr/case-study" target="_blank">Ecovadis, Konbini, Payfit, BNP Paribas</a> and +700 others.</li><li>Greenly makes sure that our data is secure. Greenly is audited annually by <a rel="noopener noreferrer" href="https://qontrol.io/" target="_blank">Qontrol.io</a> and is accompanied by <a rel="noopener noreferrer" href="https://drata.com/" target="_blank">Drata</a> in order to obtain the ISO27001 and Soc2 Type 2. You can find their full <a rel="noopener noreferrer" href="https://greenly.stonly.com/kb/guide/en/our-security-policy-pYc1DmeLdL/Steps/1978202" target="_blank">Security Policy</a> here.</li></ul><p><br></p><p>This workflow was validated internally by our CEO [<strong>CEO NAME</strong>]in copy of this email.</p><p><br></p><p>Best,</p><p><br></p><p>[<strong>YOUR NAME</strong>]</p>'
      }
      verticalAlign="center"
    />
  </Frame>
</App>
