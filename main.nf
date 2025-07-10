params.reads = './data/*_R{1,2}.fastq.gz'

profiles {
  awsbatch {
    process.executor = 'awsbatch'
    aws.region = 'us-east-1'
  }
  docker {
    process.container = 'nfcore/ampliseq:latest'
  }
}

