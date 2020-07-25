//
//  ContentView.swift
//  DisclousreGroupExam
//
//  Created by Macbook PRO on 15.07.2020.
//

import SwiftUI

struct DisclousreGroupView: View {
    
    @State var showTurkishLeague = false
    @State var turkishFavouriteTeam = ""
    
    @State var showPremierLeague = false
    @State var premierFavouriteTeam = ""
    
    @State var showSerieA = false
    @State var serieAFavouriteTeam = ""
    
    @State var showLaLiga = false
    @State var LaLigaFavouriteTeam = ""
    
    var body: some View {
        ScrollView{
            
            VStack {
                //Türkiye Ligi
                DisclosureGroup("Türkiye Süper Ligi", isExpanded: self.$showTurkishLeague) {
                    ScrollView {
                        LazyVStack(alignment: .leading, spacing: 15, pinnedViews: [], content: {
                            ForEach(turkishSuperLeague, id: \.self) { team in
                                Text("\(team)")
                                    .onTapGesture {
                                        self.turkishFavouriteTeam = team
                                        withAnimation {
                                            self.showTurkishLeague.toggle()
                                        }
                                    }
                            }
                        })
                    }
                    .padding(.top)
                    .frame(height: 250)
                }
                .padding()
                .background(Color.black.opacity(0.06))
                .cornerRadius(12)
                .padding(.horizontal)
                
                
                //Premier Lig
                DisclosureGroup("Premier Lig", isExpanded: self.$showPremierLeague) {
                    ScrollView {
                        LazyVStack(alignment: .leading, spacing: 15, pinnedViews: [], content: {
                            ForEach(premierLeague, id: \.self) { team in
                                Text("\(team)")
                                    .onTapGesture {
                                        self.premierFavouriteTeam = team
                                        withAnimation {
                                            self.showPremierLeague.toggle()
                                        }
                                    }
                            }
                        })
                    }
                    .padding(.top)
                    .frame(height: 250)
                }
                
                .padding()
                .background(Color.black.opacity(0.06))
                .cornerRadius(12)
                .padding(.horizontal)
                
                //SerieA
                
                DisclosureGroup("Serie A", isExpanded: self.$showSerieA) {
                    ScrollView {
                        LazyVStack(alignment: .leading, spacing: 15, pinnedViews: [], content: {
                            ForEach(serieA, id: \.self) { team in
                                Text("\(team)")
                                    .onTapGesture {
                                        self.serieAFavouriteTeam = team
                                        withAnimation {
                                            self.showSerieA.toggle()
                                        }
                                    }
                            }
                        })
                    }
                    .padding(.top)
                    .frame(height: 250)
                }
                
                .padding()
                .background(Color.black.opacity(0.06))
                .cornerRadius(12)
                .padding(.horizontal)
                
                
                //La Liga
                
                DisclosureGroup("La Liga", isExpanded: self.$showLaLiga) {
                    ScrollView {
                        LazyVStack(alignment: .leading, spacing: 15, pinnedViews: [], content: {
                            ForEach(laLiga, id: \.self) { team in
                                Text("\(team)")
                                    .onTapGesture {
                                        self.LaLigaFavouriteTeam = team
                                        withAnimation {
                                            self.showLaLiga.toggle()
                                        }
                                    }
                            }
                        })
                    }
                    .padding(.top)
                    .frame(height: 250)
                }
                
                .padding()
                .background(Color.black.opacity(0.06))
                .cornerRadius(12)
                .padding(.horizontal)
                
                
                
                Text("Türkiye Ligi Favori Takımınız: \(turkishFavouriteTeam)")
                Text("Premier Lig Favori Takımınız: \(premierFavouriteTeam)")
                Text("Serie A Favori Takımınız: \(serieAFavouriteTeam)")
                Text("La Liga Favori Takımınız: \(LaLigaFavouriteTeam)")
                Spacer()
                
            }
        }
        
    }
    var turkishSuperLeague = [
        "Fenerbahce","Besiktas","Galatasaray","Başaksehir","Trabzonspor","Alanyaspor","Antalyaspor","Çaykur Rizespor","Denizlispor","Gaziantep","Gençlerbirliği","Göztepe","Kasımpaşa","Kayserispor","Göztepe","MKE Ankaragücü","Yeni Malatyspor"
    ]
    
    var premierLeague = ["AFC Bournemouth",
                         "Arsenal",
                         "Aston Villa",
                         "Brighton & Hove Albion",
                         "Burnley",
                         "Chelsea",
                         "Crystal Palace",
                         "Everton",
                         "Leicester City",
                         "Liverpool",
                         "Manchester City",
                         "Manchester United",
                         "Newcastle United",
                         "Norwich City",
                         "Sheffield United",
                         "Southampton",
                         "Tottenham Hotspur",
                         "Watford",
                         "West Ham United",
                         "Wolverhampton Wanderers"]
    
    var serieA = ["Atalanta",
                  "Benevento",
                  "Bologna",
                  "Cagliari",
                  "Chievo",
                  "Crotone",
                  "Fiorentina",
                  "Genoa",
                  "Hellas Verona",
                  "Internazionale",
                  "Juventus",
                  "Lazio",
                  "Milan",
                  "Napoli",
                  "Roma",
                  "Sampdoria",
                  "Sassuolo",
                  "SPAL",
                  "Torino",
                  "Udinese"]
    
    var laLiga = ["Real Madrid",
                  "Barcelona",
                  "Atletico Madrid",
                  "Sevilla",
                  "Villarreal",
                  "Getafe",
                  "Real Sociedad",
                  "Athletic Bilbao",
                  "Valencia",
                  "Granada",
                  "Ossasuna",
                  "Levante",
                  "Real Betis",
                  "Real Valladolid",
                  "Celta Vigo",
                  "Eibar",
                  "Deportivo Alaves",
                  "Leganes",
                  "Mallorca",
                  "Espanyol"]
    
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        DisclousreGroupView ()
    }
}


