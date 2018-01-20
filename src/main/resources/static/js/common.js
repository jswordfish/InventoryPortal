function removeEmptyValueFromJSON(reqArr){
          for(var key in reqArr) {
              if (reqArr[key] == undefined || reqArr[key] == '') {
                  delete reqArr[key];
              }
              for(var inKey in reqArr[key]) {
                  if (reqArr[key][inKey] == undefined || reqArr[key][inKey] == '') {
                      delete reqArr[key][inKey];
                  }
              }
          }
          return reqArr;
      }
