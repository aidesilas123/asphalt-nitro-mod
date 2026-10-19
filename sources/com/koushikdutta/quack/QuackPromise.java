package com.koushikdutta.quack;

/* JADX INFO: loaded from: classes4.dex */
public interface QuackPromise {
    @QuackMethodName(name = "catch")
    QuackPromise caught(QuackPromiseReceiver quackPromiseReceiver);

    QuackPromise then(QuackPromiseReceiver quackPromiseReceiver);
}
