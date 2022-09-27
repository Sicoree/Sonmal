package com.d202.sonmal.model.api

import com.d202.sonmal.model.dto.MacroDto
import com.d202.sonmal.model.paging.PagingResult
import okhttp3.MultipartBody
import okhttp3.RequestBody
import retrofit2.Response
import retrofit2.http.*

interface MacroApi {


    @GET("sign/macro/category/{categorySeq}")
    suspend fun getMacroList(@Path("categorySeq") categorySeq: Int): Response<MutableList<MacroDto>>

    @GET("sign/macro/category/{userSeq}")
    suspend fun getPageMacroList(@Path("userSeq") userSeq: Int, @Query("page")page: Int): Response<PagingResult<MacroDto>>

    @Multipart
    @POST("sign/macro")
    suspend fun addMacro(
        @Part title: MultipartBody.Part,
        @Part content: MultipartBody.Part,
        @Part categorySeq: MultipartBody.Part,
        @Part icon: MultipartBody.Part,
        @Part videoFileId: MultipartBody.Part?
//        @PartMap data: HashMap<String, RequestBody>
    ): Response<Void>
}