###### Class io.didomi.iabtcf.utils.PrimitiveIterator (io.didomi.iabtcf.utils.PrimitiveIterator)
.class public interface abstract Lio/didomi/iabtcf/utils/PrimitiveIterator;
.super Ljava/lang/Object;
.source "PrimitiveIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/didomi/iabtcf/utils/PrimitiveIterator$OfDouble;,
        Lio/didomi/iabtcf/utils/PrimitiveIterator$OfLong;,
        Lio/didomi/iabtcf/utils/PrimitiveIterator$OfInt;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "T_CONS:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public abstract forEachRemaining(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_CONS;)V"
        }
    .end annotation
.end method
