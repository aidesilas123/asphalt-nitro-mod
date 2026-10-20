###### Class com.google.firebase.encoders.DataEncoder (com.google.firebase.encoders.DataEncoder)
.class public interface abstract Lcom/google/firebase/encoders/DataEncoder;
.super Ljava/lang/Object;
.source "DataEncoder.java"


# virtual methods
.method public abstract a(Ljava/lang/Object;Ljava/io/Writer;)V
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/Writer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
