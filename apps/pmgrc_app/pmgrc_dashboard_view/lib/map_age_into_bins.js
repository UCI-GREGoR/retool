// Reference external variables with curly brackets or using JS variables
const data = {{getParticipantAge.data.age_at_enrollment}}
let buckets = {'0-17': 0, '18-29': 0, '30-39': 0, '40-49': 0, '50-59': 0, '60-69': 0, '70-79': 0, '80-89': 0, '90+': 0}
data.forEach(x => {
  if (x < 18) {
    buckets['0-17'] += 1
  } else if (x >= 18 && x < 30) {
    buckets['18-29'] += 1
  } else if (x >= 30 && x < 40) {
    buckets['30-39'] += 1
  } else if (x >= 40 && x < 50) {
    buckets['40-49'] += 1
  } else if (x >= 50 && x < 60) {
    buckets['50-59'] += 1
  } else if (x >= 60 && x < 70) {
    buckets['60-69'] += 1
  } else if (x >= 70 && x < 80) {
    buckets['70-79'] += 1
  } else if (x >= 80 && x < 90) {
    buckets['80-89'] += 1
  } else if (x >= 90) {
    buckets['90+'] += 1
  }
})

const chartTable = [
  {'ageBin': '0-17', 'count': buckets['0-17']},
  {'ageBin': '18-29', 'count': buckets['18-29']},
  {'ageBin': '30-39', 'count': buckets['30-39']},
  {'ageBin': '40-49', 'count': buckets['40-49']},
  {'ageBin': '50-59', 'count': buckets['50-59']},
  {'ageBin': '60-69', 'count': buckets['60-69']},
  {'ageBin': '70-79', 'count': buckets['70-79']},
  {'ageBin': '80-89', 'count': buckets['80-89']},
  {'ageBin': '90+', 'count': buckets['90+']},
]

return chartTable






