<Container
  id="container1"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
  showHeader={true}
>
  <Header>
    <Text
      id="containerTitle1"
      value="#### Claim Metrics"
      verticalAlign="center"
    />
  </Header>
  <View id="84fe8" viewKey="View 1">
    <Image
      id="image1"
      fit="contain"
      heightType="fixed"
      horizontalAlign="center"
      src={
        "{{ theme.primary == \"#016fd0\" ? 'https://pbs.twimg.com/profile_images/986855869827768321/exMxTOCm_400x400.jpg' : theme.primary == '#ff365a' ? 'https://static-00.iconduck.com/assets.00/airbnb-icon-2048x2048-kuw3ebuv.png' :  theme.primary == '#101f4a' ? 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBNJKIbP2VNXbsy2DO3elcGkAHf0njMNo3M_q7vaf_3DyvmdERWNnf7kHpp5lncU7Xyn4&usqp=CAU' : 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRST1KYT8iTQHxcFKKQ9CpB4NT9iib_nC-j9w&s'}}"
      }
      style={{ ordered: [] }}
    />
    <Rating
      id="rating1"
      allowHalf={true}
      label="Claim Rating"
      labelPosition="top"
      max={5}
      value={4.5}
    />
    <Statistic
      id="statistic1"
      currency="USD"
      formattingStyle="currency"
      label="Total Claims"
      labelCaption="Since last month"
      positiveTrend="{{ self.value >= 0 }}"
      secondaryCurrency="USD"
      secondaryEnableTrend={true}
      secondaryFormattingStyle="percent"
      secondaryPositiveTrend="{{ self.secondaryValue >= 0 }}"
      secondaryShowSeparators={true}
      secondarySignDisplay="trendArrows"
      secondaryValue={0.08}
      showSeparators={true}
      value={7552.8}
    />
    <ProgressCircle id="progressCircle1" horizontalAlign="center" value={60} />
  </View>
</Container>
