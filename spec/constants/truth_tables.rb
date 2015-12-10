FULL_MATCH = 'FULL_MATCH'
PARTIAL_MATCH = 'PARTIAL_MATCH'
NO_MATCH = 'NO_MATCH'

# Truth table setup
#    |  F  P  N
# ---+---------
# F  |  FF FP FN
# P  |  PF PP PN
# N  |  NF NP NN
TRUTH_TABLE_SETUP = [
  [[FULL_MATCH, FULL_MATCH], [FULL_MATCH, PARTIAL_MATCH], [FULL_MATCH, NO_MATCH]],
  [[PARTIAL_MATCH, FULL_MATCH], [PARTIAL_MATCH, PARTIAL_MATCH], [PARTIAL_MATCH, NO_MATCH]],
  [[NO_MATCH, FULL_MATCH], [NO_MATCH, PARTIAL_MATCH], [FULL_MATCH, NO_MATCH]]
]

# Deduped truth table setup
#    |  F  P  N
# ---+---------
# F  |  FF FP FN
# P  |     PP PN
# N  |        NN
DEDUPED_TRUTH_TABLE_SETUP = [
  [[FULL_MATCH, FULL_MATCH], [FULL_MATCH, PARTIAL_MATCH], [FULL_MATCH, NO_MATCH]],
  [[PARTIAL_MATCH, PARTIAL_MATCH], [PARTIAL_MATCH, NO_MATCH]],
  [[FULL_MATCH, NO_MATCH]]
]

# AND
#    |  F  P  N
# ---+---------
# F  |  F  P  N
# P  |  P  P  N
# N  |  N  N  N
AND_TABLE_RESULTS = [
  [FULL_MATCH, PARTIAL_MATCH, NO_MATCH],
  [PARTIAL_MATCH, PARTIAL_MATCH, NO_MATCH],
  [NO_MATCH, NO_MATCH, NO_MATCH]
]

# Deduped AND
#    |  F  P  N
# ---+---------
# F  |  F  P  N
# P  |  P  P  N
# N  |  N  N  N
DEDUPED_AND_TABLE_RESULTS = [
  [FULL_MATCH, PARTIAL_MATCH, NO_MATCH],
  [PARTIAL_MATCH, NO_MATCH],
  [NO_MATCH]
]

# OR
#    |  F  P  N
# ---+---------
# F  |  F  F  P
# P  |  F  P  P
# N  |  P  P  N
OR_TABLE_RESULTS = [
  [FULL_MATCH, FULL_MATCH, PARTIAL_MATCH],
  [FULL_MATCH, FULL_MATCH, PARTIAL_MATCH],
  [PARTIAL_MATCH, PARTIAL_MATCH, NO_MATCH]
]

# Deduped OR
#    |  F  P  N
# ---+---------
# F  |  F  F  P
# P  |     P  P
# N  |        N
DEDUPED_OR_TABLE_RESULTS = [
  [FULL_MATCH, FULL_MATCH, PARTIAL_MATCH],
  [FULL_MATCH, PARTIAL_MATCH],
  [NO_MATCH]
]

# NONE
#    |  F  P  N
# ---+---------
# F  |  N  N  N
# P  |  N  N  N
# N  |  N  N  F
NONE_TABLE_RESULTS = [
  [NO_MATCH, NO_MATCH, NO_MATCH],
  [NO_MATCH, NO_MATCH, NO_MATCH],
  [NO_MATCH, NO_MATCH, FULL_MATCH]
]

# Deduped NONE
#    |  F  P  N
# ---+---------
# F  |  N  N  N
# P  |  N  N  N
# N  |  N  N  F
DEDUPED_NONE_TABLE_RESULTS = [
  [NO_MATCH, NO_MATCH, NO_MATCH],
  [NO_MATCH, NO_MATCH],
  [FULL_MATCH]
]
