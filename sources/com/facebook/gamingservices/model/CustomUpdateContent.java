package com.facebook.gamingservices.model;

import android.graphics.Bitmap;
import android.util.Base64;
import com.facebook.gamingservices.GamingContext;
import java.io.ByteArrayOutputStream;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: CustomUpdateContent.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class CustomUpdateContent {
    private final String contextTokenId;
    private final CustomUpdateLocalizedText cta;
    private final String data;
    private final String image;
    private final CustomUpdateMedia media;
    private final CustomUpdateLocalizedText text;

    /* JADX INFO: compiled from: CustomUpdateContent.kt */
    public static final class Builder {
        private final String contextTokenId;
        private CustomUpdateLocalizedText cta;
        private String data;
        private final Bitmap image;
        private final CustomUpdateMedia media;
        private final CustomUpdateLocalizedText text;

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public Builder(GamingContext contextToken, CustomUpdateLocalizedText text, Bitmap image) {
            this(contextToken.getContextID(), text, image, null);
            Intrinsics.checkNotNullParameter(contextToken, "contextToken");
            Intrinsics.checkNotNullParameter(text, "text");
            Intrinsics.checkNotNullParameter(image, "image");
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public Builder(GamingContext contextToken, CustomUpdateLocalizedText text, CustomUpdateMedia media) {
            this(contextToken.getContextID(), text, null, media);
            Intrinsics.checkNotNullParameter(contextToken, "contextToken");
            Intrinsics.checkNotNullParameter(text, "text");
            Intrinsics.checkNotNullParameter(media, "media");
        }

        private Builder(String str, CustomUpdateLocalizedText customUpdateLocalizedText, Bitmap bitmap, CustomUpdateMedia customUpdateMedia) {
            this.contextTokenId = str;
            this.text = customUpdateLocalizedText;
            this.image = bitmap;
            this.media = customUpdateMedia;
        }

        private final String bitmapToBase64String(Bitmap bitmap) {
            if (bitmap == null) {
                return null;
            }
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            bitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
            return Intrinsics.stringPlus("data:image/png;base64,", Base64.encodeToString(byteArrayOutputStream.toByteArray(), 2));
        }

        public final CustomUpdateContent build() {
            CustomUpdateMedia customUpdateMedia = this.media;
            if (customUpdateMedia != null) {
                if (!((customUpdateMedia.getGif() != null) ^ (this.media.getVideo() != null))) {
                    throw new IllegalArgumentException("Invalid CustomUpdateMedia, please set either gif or video");
                }
            }
            String strBitmapToBase64String = bitmapToBase64String(this.image);
            String str = this.contextTokenId;
            if (str != null) {
                return new CustomUpdateContent(str, this.text, this.cta, strBitmapToBase64String, this.media, this.data, null);
            }
            throw new IllegalArgumentException("parameter contextToken must not be null");
        }

        public final CustomUpdateLocalizedText getCta() {
            return this.cta;
        }

        public final String getData() {
            return this.data;
        }

        public final Builder setCta(CustomUpdateLocalizedText cta) {
            Intrinsics.checkNotNullParameter(cta, "cta");
            this.cta = cta;
            return this;
        }

        public final Builder setData(String data) {
            Intrinsics.checkNotNullParameter(data, "data");
            this.data = data;
            return this;
        }
    }

    private CustomUpdateContent(String str, CustomUpdateLocalizedText customUpdateLocalizedText, CustomUpdateLocalizedText customUpdateLocalizedText2, String str2, CustomUpdateMedia customUpdateMedia, String str3) {
        this.contextTokenId = str;
        this.text = customUpdateLocalizedText;
        this.cta = customUpdateLocalizedText2;
        this.image = str2;
        this.media = customUpdateMedia;
        this.data = str3;
    }

    /* synthetic */ CustomUpdateContent(String str, CustomUpdateLocalizedText customUpdateLocalizedText, CustomUpdateLocalizedText customUpdateLocalizedText2, String str2, CustomUpdateMedia customUpdateMedia, String str3, int i, n nVar) {
        this(str, customUpdateLocalizedText, (i & 4) != 0 ? null : customUpdateLocalizedText2, (i & 8) != 0 ? null : str2, (i & 16) != 0 ? null : customUpdateMedia, (i & 32) != 0 ? null : str3);
    }

    public /* synthetic */ CustomUpdateContent(String str, CustomUpdateLocalizedText customUpdateLocalizedText, CustomUpdateLocalizedText customUpdateLocalizedText2, String str2, CustomUpdateMedia customUpdateMedia, String str3, n nVar) {
        this(str, customUpdateLocalizedText, customUpdateLocalizedText2, str2, customUpdateMedia, str3);
    }

    public final String getContextTokenId() {
        return this.contextTokenId;
    }

    public final CustomUpdateLocalizedText getCta() {
        return this.cta;
    }

    public final String getData() {
        return this.data;
    }

    public final String getImage() {
        return this.image;
    }

    public final CustomUpdateMedia getMedia() {
        return this.media;
    }

    public final CustomUpdateLocalizedText getText() {
        return this.text;
    }

    public final JSONObject toGraphRequestContent() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("context_token_id", this.contextTokenId);
        jSONObject.put("text", this.text.toJSONObject().toString());
        CustomUpdateLocalizedText customUpdateLocalizedText = this.cta;
        if (customUpdateLocalizedText != null) {
            jSONObject.put("cta", customUpdateLocalizedText.toJSONObject().toString());
        }
        String str = this.image;
        if (str != null) {
            jSONObject.put("image", str);
        }
        CustomUpdateMedia customUpdateMedia = this.media;
        if (customUpdateMedia != null) {
            jSONObject.put("media", customUpdateMedia.toJSONObject().toString());
        }
        String str2 = this.data;
        if (str2 != null) {
            jSONObject.put("data", str2);
        }
        return jSONObject;
    }
}
