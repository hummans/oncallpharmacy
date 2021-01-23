//
//  Util.swift
//  iosApp
//
//  Created by Çağatay Emekci on 10.01.2021.
//  Copyright © 2021 orgName. All rights reserved.
//

func compose<A, B, C>(
  _ f: @escaping (B) -> C,
  _ g: @escaping (A) -> B
  )
  -> (A) -> C {

    return { (a: A) -> C in
      f(g(a))
    }
}

func with<A, B>(_ a: A, _ f: (A) throws -> B) rethrows -> B {
  return try f(a)
}
