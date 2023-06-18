/**
 * OpenExpress - Fully Hardware Automated Open Research Framework for Future
 *               Fast NVMe Devices
 *
 * Copyright (c) 2020 CAMELab.org. All rights reserved.
 *
 * OpenExpress License 0.1.
 *
 * OpenExpress is provided for “academic research” and “non-commercial”
 * purposes. Here, OpenExpress means the hardware source code, documents, etc.
 * that you can download from a link given by https://openexpress.camelab.org.
 * One of the main purposes of sharing OpenExpress's hardware IP cores is to be
 * an educational reference point for academic researchers, and the author
 * doesn't want to implicitly and/or explicitly have an impact on industry
 * business and complicated situation behind them.
 *
 * The author thus does allow downloading OpenExpress "only" from the designated
 *  website, and permit to examine and do any activities on OpenExpress (such as
 *  use/modify) for "only the one" who is successfully verified and agrees on
 * this End User License Agreement. OpenExpress is protected by one or more
 * patents. Note that all use cases of OpenExpress without registration at
 *  https://openexpress.camelab.org will be in violation of the law.
 *
 * The academic users (permitted) to download OpenExpress require understanding
 * that any form of non-permitted distribution, including a variation and
 * reproduction of the original OpenExpress version (you downloaded), is not
 * allowed. If a user left a university program, any local copy of OpenExpress
 * should be removed. OpenExpress is provided as is without warranty of any
 * kind, express, or implied.  In no event shall the author be liable for any
 * claim, damages or other liability whether in an action of contract, tort or
 * other liability, otherwise, arising from, out of or in connection with
 * OpenExpress or the use or other dealings with OpenExpress.
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of OpenExpress.
 */

`ifndef NVME_COMPLETION_FORMAT
    `define NVME_COMPLETION_FORMAT
    typedef struct packed {
        struct packed {
            logic           do_not_retry;
            logic           more;
            logic [  1: 0]  reserved;
            enum logic [ 2: 0]
            {
                generic_command_status  = 3'b000,
                command_specific_status = 3'b001,
                media_and_data_integrity= 3'b010,
                vendor_specific         = 3'b111
            }   status_code_type;
            logic [  7: 0]  status_code;
        }   status_field;
        logic           phase;
        logic [ 15: 0]  command_identifier;
        logic [ 15: 0]  sq_identifier;
        logic [ 15: 0]  sq_head_pointer;
        struct packed {
            logic [  7: 0]  reserved;
            logic [  7: 0]  function_number;
            logic [ 15: 0]  cq_identifier;
        }   reserved;
        logic [ 31: 0]  command_specific;
    }   nvme_completion_format_t;
`endif
