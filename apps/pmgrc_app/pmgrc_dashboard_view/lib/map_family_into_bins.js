// Reference external variables with curly brackets or using JS variables
const family_data = {{getFamilyCounts.data.count}}

let bins = {'proband': 0, 'duo': 0, 'trio': 0}

family_data.forEach(x => {
  if (x == 1) {
    bins.proband += 1
  } else if (x == 2) {
    bins.duo += 1
  } else if (x >= 3) {
    bins.trio += 1
  }
})

return bins
