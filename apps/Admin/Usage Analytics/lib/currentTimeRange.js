return {
  'start': moment({{DateRange.value.start }}).toISOString(),
  'end': moment({{ DateRange.value.end }}).toISOString(),
  'startPrev': {{ moment(DateRange.value.start).subtract(moment(DateRange.value.end).diff(DateRange.value.start, 'days'), 'days').toISOString() }}
}