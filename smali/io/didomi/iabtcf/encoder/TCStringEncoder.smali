###### Class io.didomi.iabtcf.encoder.TCStringEncoder (io.didomi.iabtcf.encoder.TCStringEncoder)
.class public interface abstract Lio/didomi/iabtcf/encoder/TCStringEncoder;
.super Ljava/lang/Object;
.source "TCStringEncoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/didomi/iabtcf/encoder/TCStringEncoder$Util;,
        Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;,
        Lio/didomi/iabtcf/encoder/TCStringEncoder$TCStringEncoderV2;,
        Lio/didomi/iabtcf/encoder/TCStringEncoder$TCStringEncoderV1;
    }
.end annotation


# virtual methods
.method public abstract encode()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lio/didomi/iabtcf/encoder/exceptions/ValueOverflowException;
        }
    .end annotation
.end method

.method public abstract toTCString()Lio/didomi/iabtcf/decoder/TCString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lio/didomi/iabtcf/encoder/exceptions/ValueOverflowException;
        }
    .end annotation
.end method
