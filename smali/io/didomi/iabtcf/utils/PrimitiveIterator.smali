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

###### Class io.didomi.iabtcf.utils.PrimitiveIterator.OfDouble (io.didomi.iabtcf.utils.PrimitiveIterator$OfDouble)
.class public interface abstract Lio/didomi/iabtcf/utils/PrimitiveIterator$OfDouble;
.super Ljava/lang/Object;
.source "PrimitiveIterator.java"

# interfaces
.implements Lio/didomi/iabtcf/utils/PrimitiveIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/didomi/iabtcf/utils/PrimitiveIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OfDouble"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/didomi/iabtcf/utils/PrimitiveIterator<",
        "Ljava/lang/Double;",
        "Lio/didomi/iabtcf/utils/function/DoubleConsumer;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract nextDouble()D
.end method

###### Class io.didomi.iabtcf.utils.PrimitiveIterator.OfInt (io.didomi.iabtcf.utils.PrimitiveIterator$OfInt)
.class public interface abstract Lio/didomi/iabtcf/utils/PrimitiveIterator$OfInt;
.super Ljava/lang/Object;
.source "PrimitiveIterator.java"

# interfaces
.implements Lio/didomi/iabtcf/utils/PrimitiveIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/didomi/iabtcf/utils/PrimitiveIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OfInt"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/didomi/iabtcf/utils/PrimitiveIterator<",
        "Ljava/lang/Integer;",
        "Lio/didomi/iabtcf/utils/function/IntConsumer;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract nextInt()I
.end method

###### Class io.didomi.iabtcf.utils.PrimitiveIterator.OfLong (io.didomi.iabtcf.utils.PrimitiveIterator$OfLong)
.class public interface abstract Lio/didomi/iabtcf/utils/PrimitiveIterator$OfLong;
.super Ljava/lang/Object;
.source "PrimitiveIterator.java"

# interfaces
.implements Lio/didomi/iabtcf/utils/PrimitiveIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/didomi/iabtcf/utils/PrimitiveIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OfLong"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/didomi/iabtcf/utils/PrimitiveIterator<",
        "Ljava/lang/Long;",
        "Lio/didomi/iabtcf/utils/function/LongConsumer;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract nextLong()J
.end method
