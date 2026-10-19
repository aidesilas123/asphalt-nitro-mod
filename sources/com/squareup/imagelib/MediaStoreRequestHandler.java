package com.squareup.imagelib;

import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.Context;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.provider.MediaStore;
import com.applovin.sdk.AppLovinEventTypes;
import com.squareup.imagelib.Picasso;
import com.squareup.imagelib.u;
import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
class MediaStoreRequestHandler extends g {
    private static final String[] b = {"orientation"};

    enum PicassoKind {
        MICRO(3, 96, 96),
        MINI(1, 512, 384),
        FULL(2, -1, -1);


        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final int f7723e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final int f7724f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final int f7725g;

        PicassoKind(int i, int i2, int i3) {
            this.f7723e = i;
            this.f7724f = i2;
            this.f7725g = i3;
        }
    }

    MediaStoreRequestHandler(Context context) {
        super(context);
    }

    static int k(ContentResolver contentResolver, Uri uri) {
        Cursor cursorQuery = null;
        try {
            cursorQuery = contentResolver.query(uri, b, null, null, null);
            if (cursorQuery != null && cursorQuery.moveToFirst()) {
                int i = cursorQuery.getInt(0);
                cursorQuery.close();
                return i;
            }
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            return 0;
        } catch (RuntimeException unused) {
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            return 0;
        } catch (Throwable th) {
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            throw th;
        }
    }

    static PicassoKind l(int i, int i2) {
        PicassoKind picassoKind = PicassoKind.MICRO;
        if (i <= picassoKind.f7724f && i2 <= picassoKind.f7725g) {
            return picassoKind;
        }
        PicassoKind picassoKind2 = PicassoKind.MINI;
        return (i > picassoKind2.f7724f || i2 > picassoKind2.f7725g) ? PicassoKind.FULL : picassoKind2;
    }

    @Override // com.squareup.imagelib.g, com.squareup.imagelib.u
    public boolean c(s sVar) {
        Uri uri = sVar.f7764e;
        return AppLovinEventTypes.USER_VIEWED_CONTENT.equals(uri.getScheme()) && "media".equals(uri.getAuthority());
    }

    @Override // com.squareup.imagelib.g, com.squareup.imagelib.u
    public u.a f(s sVar, int i) throws IOException {
        Bitmap thumbnail;
        ContentResolver contentResolver = this.a.getContentResolver();
        int iK = k(contentResolver, sVar.f7764e);
        String type = contentResolver.getType(sVar.f7764e);
        boolean z = type != null && type.startsWith("video/");
        if (sVar.c()) {
            PicassoKind picassoKindL = l(sVar.i, sVar.j);
            if (!z && picassoKindL == PicassoKind.FULL) {
                return new u.a(null, j(sVar), Picasso.LoadedFrom.DISK, iK);
            }
            long id = ContentUris.parseId(sVar.f7764e);
            BitmapFactory.Options optionsD = u.d(sVar);
            optionsD.inJustDecodeBounds = true;
            u.a(sVar.i, sVar.j, picassoKindL.f7724f, picassoKindL.f7725g, optionsD, sVar);
            if (z) {
                thumbnail = MediaStore.Video.Thumbnails.getThumbnail(contentResolver, id, picassoKindL == PicassoKind.FULL ? 1 : picassoKindL.f7723e, optionsD);
            } else {
                thumbnail = MediaStore.Images.Thumbnails.getThumbnail(contentResolver, id, picassoKindL.f7723e, optionsD);
            }
            if (thumbnail != null) {
                return new u.a(thumbnail, null, Picasso.LoadedFrom.DISK, iK);
            }
        }
        return new u.a(null, j(sVar), Picasso.LoadedFrom.DISK, iK);
    }
}
